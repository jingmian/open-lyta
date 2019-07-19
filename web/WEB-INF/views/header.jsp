<%--
  Created by IntelliJ IDEA.
  User: Administrator-V
  Date: 2019/4/1
  Time: 18:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%> <%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="/img/favicon.ico" />
    <link href="<%=basePath %>bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=basePath %>bootstrap/css/bootstrap-grid.min.css" rel="stylesheet">
    <link href="<%=basePath %>bootstrap/css/bootstrap-reboot.min.css" rel="stylesheet">

    <script src="<%=basePath %>bootstrap/js/jquery.min.js"></script>
    <script src="<%=basePath %>bootstrap/js/bootstrap.min.js"></script>
    <script src="<%=basePath %>bootstrap/js/bootstrap.bundle.min.js"></script>

    <!--[if lt IE 9]>
    <script src="<%=basePath %>bootstrap/ie/html5.js"></script>
    <script src="<%=basePath %>bootstrap/ie/html5.min.js"></script>
    <![endif]-->
    <style>
        body{
            padding-top: 56px;!important;
        }

        a{
            color: #FB9D2A;
        }
    </style>
</head>

<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top ">

    <a class="navbar-brand" href="<%=basePath %>index.jsp">
        <img src="/img/index/favico.jpg" href="<%=basePath %>index.jsp" width="30" height="30" class="d-inline-block align-top" alt="洛阳旅游网">
        洛阳旅游网
    </a>

    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="<%=basePath %>index.jsp">主页<span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<%=basePath %>situation.jsp">概况</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<%=basePath %>scenic/scenicList">景点</a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    应用
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="<%=basePath %>app-center.jsp">应用中心</a>
                    <a class="dropdown-item" href="<%=basePath %>map.jsp">景点地图</a>
                    <a class="dropdown-item" href="https://ditu.amap.com/search?query=%E6%B4%9B%E9%98%B3%E5%B8%82&city=410311&geoobj=112.347436%7C34.558916%7C112.631364%7C34.772676&zoom=12">路线导航</a>
                </div>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#"role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    游记社区
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="<%=basePath %>message/page">社区主页</a>
                    <a class="dropdown-item" href="<%=basePath %>user/my_info">我的信息</a>
                    <a class="dropdown-item" href="<%=basePath %>user/to_login">立即登录</a>
                    <a class="dropdown-item" href="<%=basePath %>logout.jsp">退出登录</a>
                </div>
            </li>
        </ul>
        <form class="form-inline my-2 my-lg-0" action="http://cn.bing.com/search" method="get" accept-charset="UTF-8" onsubmit="document.charset='UTF-8'" target="_blank" >
            <input class="form-control mr-sm-2" type="search" name="q" placeholder="搜索" aria-label="搜索" style="border-color:none;outline-color: none;box-shadow: none">
            <button class="btn my-2 my-sm-0" type="submit" style="box-shadow: none">搜索</button>
        </form>
    </div>
</nav>
