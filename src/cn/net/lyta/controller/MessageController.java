package cn.net.lyta.controller;

import cn.net.lyta.tool.Common;
import cn.net.lyta.tool.Pager;
import cn.net.lyta.biz.MessageBiz;
import cn.net.lyta.biz.UserBiz;
import cn.net.lyta.biz.impl.UserBizmpl;
import cn.net.lyta.dao.MessageDao;
import cn.net.lyta.entity.Message;
import cn.net.lyta.entity.User;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Map;

import static java.lang.Integer.parseInt;
import static javax.xml.bind.DatatypeConverter.parseInteger;


/**
 * @author Administrator-V
 * 消息controller
 *
 * */
@Controller("MessageController")
@RequestMapping("/message")
public class MessageController {
    private final Log logger = LogFactory.getLog(getClass());
    @Autowired
    public UserBiz userBiz;
    @Autowired
    public MessageDao messageDao;
    @Autowired
    public MessageBiz messageBiz;

    @RequestMapping("/page")
    public String page(Map<String,Object> map,HttpServletRequest request, HttpSession session)  {
        User user = (User)session.getAttribute("user");
        // 考虑分页查询
        Pager pager=new Pager();
        // 看是否传入了分页参数的页码
        String pageIndex = request.getParameter("pageIndex");
        //new Integer(request.getParameter("userId")).intValue();
        int userId = (request.getParameter("userId")==null || request.getParameter("userId").isEmpty())?0: parseInt(request.getParameter("userId"));
        this.logger.info(userId);
        if(!StringUtils.isEmpty(pageIndex)){
            int pSize = parseInt(pageIndex);
            //int pSize = Integer.valueOf(pageIndex);
            pager.setPageIndex(pSize);
        }

        int count = messageDao.count(userId);
        pager.setTotalCount(count);
        int last = count % pager.getPageSize() == 0 ? (count / pager.getPageSize()) : ((count / pager.getPageSize() + 1));
        map.put("list",messageBiz.getAll(userId,pager));
        map.put("pager" ,pager);
        map.put("last" ,last);
        map.put("user",user);
        return "message_list";
    }

    @RequestMapping("/to_add_msg")
    public  String to_add_msg(HttpSession session,Map<String,Object> map){
        User user = (User)session.getAttribute("user");
        map.put("message",new Message());
        map.put("user",user);
        return "add_message";
    }

    @RequestMapping("/add_msg")
    public  String add_msg(Message message,HttpSession session){
        User user = (User)session.getAttribute("user");
        message.setUsername(user.getUsername());
        message.setUser_id(user.getId());
        message.setCreate_time(Common.getSqlDate());
        messageDao.insert(message);
        System.out.println(message.toString());
        return "redirect:page";
        //重定向到list控制器中
    }


}
