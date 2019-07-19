<%--
  Created by IntelliJ IDEA.
  User: Administrator-V
  Date: 2019/4/7
  Time: 13:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%> <%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>洛阳旅游网站-后台</title>
    <link rel="stylesheet" type="text/css" href="../../easyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="../../easyui/themes/icon.css">
    <link rel="stylesheet" type="text/css" href="../../easyui/themes/default/demo.css">
    <script type="text/javascript" src="../../easyui/jquery.min.js"></script>
    <script type="text/javascript" src="../../easyui/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="../../js/highcharts.js"></script>
</head>
<body class="easyui-layout">
<div data-options="region:'north',border:false" style="height:72px;background:#B3DFDA">
    <h1>洛阳旅游网站-后台管理系统</h1>
</div>
<div data-options="region:'west',split:true,title:'侧边栏'" style="width:256px;">
    <ul>
        <!--这部分是导航栏信息。-->
        <li class="s-firstItem first">
            <a href="#" onclick="javascript:window.location.reload()">
                <i class="fa fa-home"></i>
                <span>首页</span>
            </a>
        </li>
        <li class="first">
            <div class="d-firstNav s-firstNav clearfix">
                <i class="fa fa-bars"></i>
                <span>景点管理</span>
                <i class="fa fa-caret-right fr "></i>
            </div>
            <ul class="d-firstDrop s-firstDrop">
                <li>
                    <ul class="d-secondDrop s-secondDrop">
                        <li class="s-thirdItem">
                            <a href="#" onclick="loadPage('/scenic/adminScenicRedirect')">查看景点</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </li>
        <li class="first">
            <div class="d-firstNav s-firstNav clearfix">
                <i class="fa fa-bars"></i>
                <span>游记管理</span>
                <i class="fa fa-caret-right fr "></i>
            </div>
            <ul class="d-firstDrop s-firstDrop">
                <li>
                    <ul class="d-secondDrop s-secondDrop">
                        <li class="s-thirdItem">
                            <a href="#" onclick="loadPage('/admin/adminMessageRedirect')">查看游记</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </li>
        <li class="first">
            <div class="d-firstNav s-firstNav">
                <i class="fa fa-bars"></i>
                <span>用户管理</span>
                <i class="fa fa-caret-right fr"></i>
            </div>
            <ul class="d-firstDrop s-firstDrop">
                <li>
                    <ul class="d-secondDrop s-secondDrop">
                        <li class="s-thirdItem">
                            <a href="#" onclick="loadPage('/admin/adminUserRedirect')">用户信息处理</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </li>
        <li class="first">
            <div class="d-firstNav s-firstNav">
                <i class="fa fa-bars"></i>
                <a href="#" onclick="loadPage('/admin/adminAboutRedirect')">
                    <span>关于</span>
                </a>
                <i class="fa fa-caret-right fr"></i>
            </div>
        </li>
    </ul>
</div>
<div data-options="region:'south',border:false" style="height:50px;background:#A9FACD">
    <h3>Copyright &copy;2019 洛阳旅游网站 保留所有权利</h3>
</div>
<div id="index-div" class="container" data-options="region:'center'">
    <img src="../../img/index/favico.png" width="480px" height="480px">
<h1>欢迎使用 洛阳旅游网站-后台管理系统</h1>
</div>

<script type="text/javascript">
    function loadPage(url) {
        $.ajax({
            type: "POST",
            url: url,
            async: true,
            dataType: "html",
            contentType: 'text/html; charset=utf-8',
            //contentType: 'application/json; charset=utf-8',
            success: function (html) {
                //$('#right').html(html);
                $('#index-div').load(url);//load函数同样能实现效果
            }
        });
    }
</script>

</body>

</html>