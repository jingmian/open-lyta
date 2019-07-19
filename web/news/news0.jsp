<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator-V
  Date: 2019/4/5
  Time: 20:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%> <%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <meta charset="utf-8">
    <title>洛阳旅游网-新闻</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">

    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <!--[if lt IE 9]>
    <script src="https://cdn.bootcss.com/html5shiv/r29/html5.js"></script>
    <script src="https://cdn.bootcss.com/html5shiv/r29/html5.min.js"></script>
    <![endif]-->
</head>
<body>
<jsp:include page="../WEB-INF/views/header.jsp"></jsp:include>
<div class="container">
    <div class="alt-item">
        <div class="alt-head">
            <div class="alt-info">
                <span>作者：<a href="">${msg.username}</a></span>
                <span>时间：<fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${msg.create_time}"/></span>
            </div>
        </div>
        <div class="alt-content">
            <h3>${msg.title}</h3>
            <img src="#">
            <p>${msg.content}</p>
        </div>
    </div>
</div>
<jsp:include page="../WEB-INF/views/footer.jsp"></jsp:include>
</body>
</html>
