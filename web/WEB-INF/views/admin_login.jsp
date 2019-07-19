<%--
  Created by IntelliJ IDEA.
  User: Administrator-V
  Date: 2019/4/7
  Time: 17:04
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
    <title>后台登录</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../../css/login.css">


</head>
<body>
<jsp:include page="./header.jsp"></jsp:include>
<div class="container">
    <h1>管理员登录</h1>
    <div class="login">
        <form action="/admin/admin" method="post">
            <div class="name">
                <input type="text" id="adminName" name="adminName" placeholder="请输入登录用户名">
                <p></p>
            </div>
            <div class="pwd">
                <input type="password" id="password" name="password" placeholder="6-16位密码，区分大小写，不能用空格">
                <p></p>
            </div>
            <div class="btn-red">
                <input onclick="return checkVerificationCode();" type="submit" value="立即登录" class="btn btn-primary" style="background-color: #337ab7">
            </div>
        </form>
    </div>
</div>
</body>
</html>