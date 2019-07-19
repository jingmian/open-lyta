<%--
  Created by IntelliJ IDEA.
  User: Administrator-V
  Date: 2019/4/1
  Time: 18:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%> <%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<head>
    <link rel="stylesheet" href="<%=basePath %>/css/footer.css">
</head>
<!--采用container-fluid，使得整个页尾的宽度为100%，并设置它的背景色-->
<footer class="container-fluid foot-wrap">
    <!--采用container，使得页尾内容居中 -->
    <div class="container">
        <div class="row">

            <div class="row-content col-lg-2 col-sm-4 col-xs-6">
                <h4 class="foot-font-color">站点导航</h4>
                <ul class="foot-font-color">
                    <li><a href="<%=basePath %>/scenic/scenicList">景点</a></li>
                    <li><a href="<%=basePath %>/situation.jsp#section-2">路线</a></li>
                    <li><a href="<%=basePath %>message/page">留言</a></li>
                </ul>
            </div>

            <div class="row-content col-lg-2 col-sm-4 col-xs-6">
                <h4 class="foot-font-color">友情链接</h4>
                <ul class="foot-font-color">
                    <li><a href="http://www.lyta.com.cn/index.html">洛阳旅游资讯网</a></li>
                    <li><a href="http://www.lyta.gov.cn/index">洛阳旅游政务网</a></li>
                    <li><a href="http://www.luoyangnianpiao.com/">洛阳旅游年票网</a></li>

                </ul>
            </div>

            <div class="row-content col-lg-2 col-sm-4 col-xs-6">
                <h4 class="foot-font-color">其他应用</h4>
                <ul class="foot-font-color">
                    <li><a href="map.jsp">地图信息</a></li>
                    <li><a href="https://ditu.amap.com/search?query=%E6%B4%9B%E9%98%B3%E5%B8%82&city=410311&geoobj=112.347436%7C34.558916%7C112.631364%7C34.772676&zoom=12">路线导航</a></li>
                    <li><a href="https://luoyang.meituan.com/">餐饮娱乐</a></li>
                    <li><a href="<%=basePath %>app-center.jsp">应用中心</a></li>
                </ul>
            </div>

            <div class="row-content col-lg-2 col-sm-4 col-xs-6">
                <h4 class="foot-font-color">关于我们</h4>
                <ul class="foot-font-color">
                    <li><a href="about.jsp">关于</a></li>
                    <li><a href="/admin/toAdmin">后台登录</a></li>
                </ul>

            </div>

        </div><!--/.row -->
    </div><!--/.container-->
    <p align="center" style="margin-top: 20px;color:#878B91;margin-bottom: 0;padding-bottom: 32px">
        Copyright &copy;2019 洛阳旅游网站 保留所有权利&nbsp&nbsp&nbsp&nbsp|&nbsp&nbsp&nbsp&nbsp<script type="text/javascript" src="https://s5.cnzz.com/z_stat.php?id=1276891174&web_id=1276891174"></script>
    </p>

</footer>