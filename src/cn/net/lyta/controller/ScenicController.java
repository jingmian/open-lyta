package cn.net.lyta.controller;

import cn.net.lyta.biz.ScenicBiz;
import cn.net.lyta.dao.ScenicDao;
import cn.net.lyta.entity.Scenic;
import cn.net.lyta.tool.GsonTools;
import cn.net.lyta.tool.UrlJsonDecode;
import cn.net.lyta.tool.UrlToJson;
import com.alibaba.fastjson.JSON;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.util.List;

import static java.lang.Integer.parseInt;

/**
 * FileName: ScenicController
 * @Author:   Administrator-V
 * Date:     2019/4/12 18:52
 * Description: ${DESCRIPTION}
 */
@Controller("ScenicController")
@RequestMapping("/scenic")
public class ScenicController {
    private final Log logger = LogFactory.getLog(getClass());

    @Autowired
    Scenic scenic;
    @Autowired
    ScenicBiz scenicBiz;
    @Autowired
    ScenicDao scenicDao;

    @RequestMapping("scenicList")
    public String scenicList(HttpServletRequest request, HttpServletResponse response){
        System.out.println("access sc");
        List<Scenic> scenicList = scenicBiz.selectScenicList();
        request.setAttribute("scenicList",scenicList);
        return "scenic_list";
    }

    @RequestMapping("content")
    public String content(HttpServletRequest request, @RequestParam Integer scenicId){
        scenic = scenicBiz.select(scenicId);

        request.setAttribute("scenicType", scenic.getScenicType());
        request.setAttribute("rank", scenic.getRank());
        request.setAttribute("scenicName", scenic.getScenicName());
        request.setAttribute("scenicImgPath", scenic.getScenicImgPath());
        request.setAttribute("scenicContent", scenic.getScenicContent());
        request.setAttribute("price", scenic.getPrice());
        request.setAttribute("openTime", scenic.getOpenTime());
        request.setAttribute("scenicAddress", scenic.getScenicAddress());
        return "scenic";
    }

    /**
     * 重定向到admin_scenic
     * */
    @RequestMapping("/adminScenicRedirect")
    public String adminScenicRedirect()  {

        return "admin_scenic";
    }


    /**
     * -----------------------------以下是增删改查------------------------------------
     *
     * */

    /**
     * 查询Scenic表的全部信息
     *
     *
     * */
    @RequestMapping("/qryScenicJson")
    public void qryScenicJson(HttpServletResponse response){
        response.setHeader("Content-type", "text/html; charset=UTF-8");
        PrintWriter out=null;
        List<Scenic>scenicAllList = null;
        try{
            out=response.getWriter();
            scenicAllList = this.scenicBiz.selectAll();
            //System.out.println(scenic.toString());
            out.println(GsonTools.getGson().toJson(scenicAllList));
            out.close();
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    /**
     * 删除Scenic表的一条
     *
     *
     * */
    @RequestMapping("/deleteScenicJson")
    public void deleteScenicJson(HttpServletRequest request) {
        try{
            int scenicId = parseInt(request.getParameter("scenicId"));
            scenicBiz.delete(scenicId);
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    /**
     * @Parm request
     * 插入Scenic内容信息
     * */
    @RequestMapping("/insertScenicJson")
    @ResponseBody
    public void insertScenicJson(HttpServletRequest request) {

        Scenic scenic = null;
        List<Scenic>listScenic = null;

        try{
            request.setCharacterEncoding("UTF-8");
            BufferedReader streamReader = new BufferedReader( new InputStreamReader(request.getInputStream(),"UTF-8"));
            StringBuilder responseStrBuilder = new StringBuilder();
            String inputStr;
            while ((inputStr = streamReader.readLine()) != null){
                responseStrBuilder.append(inputStr);
                System.out.println("["+ UrlToJson.go(UrlJsonDecode.decodeUnicode(responseStrBuilder.toString()))+"]");
                listScenic = JSON.parseArray("["+UrlToJson.go(UrlJsonDecode.decodeUnicode(responseStrBuilder.toString()))+"]", Scenic.class);
                for(int i = 0;i < listScenic.size(); i ++){
                    scenic = listScenic.get(i);
                    scenicBiz.insert(scenic);
                }

            }

        }catch (Exception e){
            e.printStackTrace();
        }

    }


    /**
     * @Parm request
     * 更改Scenic内容信息
     * */
    @RequestMapping("/updateScenicJson")
    @ResponseBody
    public void updateScenicJson(HttpServletRequest request) {

        System.out.println("accessed updateScenicJson");
        Scenic scenic = null;
        List<Scenic>listScenic = null;

        try{
            request.setCharacterEncoding("UTF-8");
            BufferedReader streamReader = new BufferedReader( new InputStreamReader(request.getInputStream(),"UTF-8"));
            StringBuilder responseStrBuilder = new StringBuilder();
            String inputStr;
            while ((inputStr = streamReader.readLine()) != null){
                responseStrBuilder.append(inputStr);
                System.out.println("["+UrlToJson.go(UrlJsonDecode.decodeUnicode(responseStrBuilder.toString()))+"]");
                listScenic = JSON.parseArray("["+UrlToJson.go(UrlJsonDecode.decodeUnicode(responseStrBuilder.toString()))+"]", Scenic.class);
                for(int i = 0;i < listScenic.size(); i ++){
                    scenic = listScenic.get(i);
                    scenicBiz.update(scenic);
                }

            }

        }catch (Exception e){
            e.printStackTrace();
        }

    }


}