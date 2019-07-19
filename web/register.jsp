<%--
  Created by IntelliJ IDEA.
  User: Administrator-V
  Date: 2019/4/5
  Time: 23:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <meta charset="UTF-8">
        <title>修改个人信息</title><meta name="viewport" content="width=device-width, initial-scale=1.0">

        <script src="./js/register.js"></script>
    </head>
    <body>
    <jsp:include page="WEB-INF/views/header.jsp"></jsp:include>
        <nav class="navbar navbar-default">
            <div class="container">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">
                        洛阳旅游网-注册
                    </a>
                </div>
            </div>
        </nav>
        <div class="container">
            <div class="jumbotron">
                <h1>Hello</h1>
                <p>欢迎注册哦 ^_^</p>
            </div>
            <div class="page-header">
                <h3><small>个人信息</small></h3>
            </div>
            <!--<form class="form-horizontal" action="/editUser.do" method="post">-->
            <form class="form-horizontal" name="register" action="/user/register" method="post">
                <input id="id" name="id" type="hidden" value="">
                <div class="form-group">
                    <label for="name" name="name" class="col-sm-2 control-label">用户 ：</label>
                    <div class="col-sm-6">
                        <input name="name" class="form-control" id="name" placeholder="请输入用户名">
                    </div>
                </div>
                <div class="form-group">
                    <label for="password" name="password" class="col-sm-2 control-label" type="password">密码 ：</label>
                    <div class="col-sm-6">
                        <input name="password" class="form-control" id="password" placeholder="请输入密码">
                    </div>
                </div>
                <div class="form-group">
                    <label for="realName" class="col-sm-2 control-label">姓名 ：</label>
                    <div class="col-sm-8">
                        <input name="realName" class="form-control" id="realName" placeholder="根据《网络安全法》请填写真实姓名">
                    </div>
                </div>
                <div class="form-group">
                    <label for="birthday" class="col-sm-2 control-label">生日 ：</label>
                    <div class="col-sm-8" id="sandbox-container">
                        <input type="date" name="birthday" class="form-control" id="birthday">
                    </div>
                </div>
                <div class="form-group">
                    <label for="phone" class="col-sm-2 control-label">手机 ：</label>
                    <div class="col-sm-8">
                        <input name="phone"  class="form-control" id="phone" placeholder="请输入中国大陆手机号">
                    </div>
                </div>
                <div class="form-group">
                    <label for="address" class="col-sm-2 control-label">地址 ：</label>
                    <div class="col-sm-8">
                        <input name="address"  class="form-control" id="address" placeholder="请输入您的收货地址">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-warning">立即注册</button>&nbsp;&nbsp;&nbsp;
                    </div>
                </div>
            </form>
        </div>
    <jsp:include page="WEB-INF/views/footer.jsp"></jsp:include>
    </body>
</html>
