package cn.net.lyta.controller;

import com.alibaba.fastjson.JSONObject;
import cn.net.lyta.tool.CreateImage;
import cn.net.lyta.tool.IsMobile;
import cn.net.lyta.tool.SafeDateFormat;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Map;
import java.util.Random;

import cn.net.lyta.biz.UserBiz;
import cn.net.lyta.biz.MessageBiz;
import cn.net.lyta.entity.User;
import org.springframework.web.bind.annotation.ResponseBody;

import static org.apache.commons.lang3.time.DateUtils.parseDate;

/**
 * @author Administrator-V
 * user controller
 * */
@Controller("UserController")
@RequestMapping("/user")
public class UserController{
    private final Log logger = LogFactory.getLog(getClass());
    @Autowired
    public UserBiz userBiz;
    @Autowired
    public UserBiz userDao;
    @Autowired
    public MessageBiz messageBiz;
    @Autowired
    public User user;

    private String  code;
    //验证码

    @RequestMapping("/to_login")
    public String toLogin()  {

        return "login";
    }

    /**
     * session 只需要直接声明就可以用session了
     */
    @RequestMapping("/login")
    public String login(HttpSession session, @RequestParam String username, @RequestParam String password){
        User user = userBiz.login(username,password);
        if (user == null) {
            return "redirect:/user/to_login";
        }
        session.setAttribute("user",user);
        return "redirect:/message/page";
    }

    @RequestMapping("/to_register")
    public String toRegister()  {
        this.logger.info("access /to_register interface");
        return "redirect:/register.jsp";
    }

    /**
     * 注册
     */
    @RequestMapping("/register")
    @ResponseBody
    public Object register(HttpSession session,HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException {

        //if(session.toString() == "" || session.toString().isEmpty()){
        String phone = null;
        user.setUsername(request.getParameter("name"));
        user.setPassword(request.getParameter("password"));
        user.setRealName(request.getParameter("realName"));
        System.out.println(request.getParameter("birthday"));
        user.setBirthday(SafeDateFormat.init(request.getParameter("birthday")));
        phone = request.getParameter("phone");
        user.setPhone(phone);
        user.setAddress(request.getParameter("address"));
        System.out.println(user.toString());
        userBiz.insert(user);
        session.setAttribute("user",user);
        response.sendRedirect("/message/page");
        return "register success";
    }

    @RequestMapping("/get_img")
    public void getImg(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CreateImage img  = new CreateImage();
        img.service( request,  response);
    }

    @RequestMapping("/my_info")
    public  String  my_info(HttpSession session, Map<String,Object> map){

        User user_old = (User)session.getAttribute("user");
        User user = userBiz.select(user_old.getId());
        session.setAttribute("user",user);
        map.put("user" ,user);
        return "user";
    }
    @RequestMapping("/my_info_edit")
    public  String  my_info_edit(User user,HttpSession session){
        User userOld = (User)session.getAttribute("user");
        user.setId(userOld.getId());
        this.logger.info(user.toString());
        userBiz.update(user);
        return "redirect:/user/my_info";
    }

}
