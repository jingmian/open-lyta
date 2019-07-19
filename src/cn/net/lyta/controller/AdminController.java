package cn.net.lyta.controller;

import cn.net.lyta.dao.UserDao;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import cn.net.lyta.biz.AdminBiz;
import cn.net.lyta.biz.UserBiz;
import cn.net.lyta.dao.MessageDao;
import cn.net.lyta.entity.Admin;
import cn.net.lyta.entity.Message;
import cn.net.lyta.entity.User;
import cn.net.lyta.tool.GsonTools;
import cn.net.lyta.tool.UrlJsonDecode;
import cn.net.lyta.tool.UrlToJson;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import cn.net.lyta.biz.MessageBiz;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import static java.lang.Integer.parseInt;

/**
 * FileName: AdminController
 * @Author:   Administrator-V
 * Date:     2019/4/7 13:22
 * Description: 管理Controller
 */
@Controller("AdminController")
@RequestMapping("/admin")
public class AdminController {
    private final Log logger = LogFactory.getLog(getClass());

    @Autowired
    public AdminBiz adminBiz;
    @Autowired
    public UserBiz userBiz;
    @Autowired
    public UserDao userDao;
    @Autowired
    public MessageDao messageDao;
    @Autowired
    public MessageBiz messageBiz;

    /**
     * 重定向到 admin_login 页面
     *
     * */
    @RequestMapping("/toAdmin")
    public String toAdmin()  {

        System.out.println("toAdmin");
        return "admin_login";
    }

    /**
     * @Parm session 只需要直接声明就可以用session了
     * admin 登陆判断
     */
    @RequestMapping("/admin")
    public String admin(HttpSession session, @RequestParam String adminName, @RequestParam String password){
        try{
            Admin admin = adminBiz.adminLogin(adminName,password);
            if (admin == null) {
                return "redirect:/admin/toAdmin";
            }
            session.setAttribute("admin",admin);
            return "redirect:/admin/adminRedirect";
        }catch (Exception e){
            e.printStackTrace();
            return "redirect:/admin/toAdmin";
        }


    }

    /**
     * admin重定向
     *
     * */
    @RequestMapping("/adminRedirect")
    public String adminRedirect()  {

        return "admin";
    }

    /**
     * 重定向到admin_message
     *
     *
     * */
    @RequestMapping("/adminMessageRedirect")
    public String adminMessageRedirect()  {

        return "admin_message";
    }

    /**
     * 重定向到admin_message
     *
     *
     * */
    @RequestMapping("/adminConfigRedirect")
    public String adminConfigRedirect()  {

        return "admin_config";
    }

    /**
     * 重定向到admin_message
     *
     *
     * */
    @RequestMapping("/adminAboutRedirect")
    public String adminAboutRedirect()  {

        return "admin_about";
    }


    /**
     * 查询Message表的全部信息
     *
     *
     * */
    @RequestMapping("/qryMessageJson")
    public void qryMessageJson(HttpServletResponse response){
        response.setHeader("Content-type", "text/html; charset=UTF-8");
        PrintWriter out=null;
        List<Message>message = null;
        try{
            out=response.getWriter();
            message = this.messageBiz.selectAll();
            System.out.println(message.toString());
            out.println(GsonTools.getGson().toJson(message));
            out.close();
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    /**
     * 删除Message表的一条
     *
     *
     * */
    @RequestMapping("/deleteMessageJson")
    public void deleteMessageJson(HttpServletRequest request) {
        try{
            System.out.println("access deleteMessageJson");
            int id = parseInt(request.getParameter("id"));
            messageBiz.delete(id);
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    /**
     * @Parm request
     * 插入留言板内容信息
     * */
    @RequestMapping("/insertMessageJson")
    @ResponseBody
    public void insertMessageJson(HttpServletRequest request) {

        System.out.println("accessed insertMessageJson");
        Message message = null;
        List<Message>listMessage = null;

        try{
            request.setCharacterEncoding("UTF-8");
            BufferedReader streamReader = new BufferedReader( new InputStreamReader(request.getInputStream(),"UTF-8"));
            StringBuilder responseStrBuilder = new StringBuilder();
            String inputStr;
            while ((inputStr = streamReader.readLine()) != null){
                responseStrBuilder.append(inputStr);
                System.out.println(responseStrBuilder.toString());
                System.out.println("["+UrlToJson.go(UrlJsonDecode.decodeUnicode(responseStrBuilder.toString()))+"]");
                listMessage = JSON.parseArray("["+UrlToJson.go(UrlJsonDecode.decodeUnicode(responseStrBuilder.toString()))+"]", Message.class);
                for(int i = 0;i < listMessage.size(); i ++){
                    message = listMessage.get(i);
                    System.out.println(listMessage.get(i));
                    messageBiz.insert(message);
                }

            }

        }catch (Exception e){
            e.printStackTrace();
        }

    }


    /**
     * @Parm request
     * 更改留言板内容信息
     * */
    @RequestMapping("/updateMessageJson")
    @ResponseBody
    public void updateMessageJson(HttpServletRequest request) {

        System.out.println("accessed updateMessageJson");
        Message message = null;
        List<Message>listMessage = null;

        try{
            request.setCharacterEncoding("UTF-8");
            BufferedReader streamReader = new BufferedReader( new InputStreamReader(request.getInputStream(),"UTF-8"));
            StringBuilder responseStrBuilder = new StringBuilder();
            String inputStr;
            while ((inputStr = streamReader.readLine()) != null){
                responseStrBuilder.append(inputStr);
                System.out.println(responseStrBuilder.toString());
                System.out.println("["+UrlToJson.go(UrlJsonDecode.decodeUnicode(responseStrBuilder.toString()))+"]");
                listMessage = JSON.parseArray("["+UrlToJson.go(UrlJsonDecode.decodeUnicode(responseStrBuilder.toString()))+"]", Message.class);
                for(int i = 0;i < listMessage.size(); i ++){
                    message = listMessage.get(i);
                    System.out.println(listMessage.get(i));
                    messageBiz.update(message);
                }

            }

        }catch (Exception e){
            e.printStackTrace();
        }

    }

    @RequestMapping("/adminUserRedirect")
    public String adminUserRedirect()  {

        return "admin_user";
    }

    /**
     * @Parm response
     * 查询用户信息
     * */
    @RequestMapping("/qryUserJson")
    public void qryUserJson(HttpServletResponse response){
        response.setHeader("Content-type", "text/html; charset=UTF-8");
        PrintWriter out=null;
        List<User>user = null;
        try{
            out=response.getWriter();
            user = this.userBiz.selectAll();
            System.out.println(user.toString());
            out.println(GsonTools.getGson().toJson(user));
            out.close();
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    /**
     * 删除user表的一条
     *
     *
     * */
    @RequestMapping("/deleteUserJson")
    public void deleteUserJson(HttpServletRequest request) {
        try{
            System.out.println("access deleteUserJson");
            int id = parseInt(request.getParameter("id"));
            userBiz.delete(id);
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    /**
     * @Parm request
     * 插入用户信息
     * */
    @RequestMapping("/insertUserJson")
    @ResponseBody
    public void insertUserJson(HttpServletRequest request) {

        System.out.println("accessed insertUserJson");
        User user = null;
        List<User>listUser = null;

        try{
            request.setCharacterEncoding("UTF-8");
            BufferedReader streamReader = new BufferedReader( new InputStreamReader(request.getInputStream(),"UTF-8"));
            StringBuilder responseStrBuilder = new StringBuilder();
            String inputStr;
            while ((inputStr = streamReader.readLine()) != null){
                responseStrBuilder.append(inputStr);
                System.out.println(responseStrBuilder.toString());
                System.out.println("["+UrlToJson.go(UrlJsonDecode.decodeUnicode(responseStrBuilder.toString()))+"]");
                listUser = JSON.parseArray("["+UrlToJson.go(UrlJsonDecode.decodeUnicode(responseStrBuilder.toString()))+"]", User.class);
                for(int i = 0;i < listUser.size(); i ++){
                    user = listUser.get(i);
                    System.out.println(listUser.get(i));
                    userBiz.insert(user);
                }

            }

        }catch (Exception e){
            e.printStackTrace();
        }

    }

    /**
     * @Parm request
     * 更改用户信息
     * */
    @RequestMapping("/updateUserJson")
    @ResponseBody
    public void updateUserJson(HttpServletRequest request) {

        System.out.println("accessed updateUserJson");
        User user = null;
        List<User>listUser = null;

        try{
            request.setCharacterEncoding("UTF-8");
            BufferedReader streamReader = new BufferedReader( new InputStreamReader(request.getInputStream(),"UTF-8"));
            StringBuilder responseStrBuilder = new StringBuilder();
            String inputStr;
            while ((inputStr = streamReader.readLine()) != null){
                responseStrBuilder.append(inputStr);
                System.out.println(responseStrBuilder.toString());
                System.out.println("["+UrlToJson.go(UrlJsonDecode.decodeUnicode(responseStrBuilder.toString()))+"]");
                listUser = JSON.parseArray("["+UrlToJson.go(UrlJsonDecode.decodeUnicode(responseStrBuilder.toString()))+"]", User.class);
                for(int i = 0;i < listUser.size(); i ++){
                    user = listUser.get(i);
                    System.out.println(listUser.get(i));
                    userBiz.update(user);
                }

            }

        }catch (Exception e){
            e.printStackTrace();
        }

    }


}
