<%--
  Created by IntelliJ IDEA.
  User: Administrator-V
  Date: 2019/4/4
  Time: 12:46
  To change this template use File | Settings | File Templates.
  ----------------------------景点模板-------------------------------------
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>洛阳旅游网-</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/scenic.css">
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
    <h1>景点名称</h1>
    <div class="scenic-main-img">
        <img src="" class="img-rounded" alt="scenic-img">
    </div>
    <p class="scenic-p">
        <h4>
        中国四大石窟
        </h4>
    </p>
    <div class="h3-div">
        <h3>电话</h3>
        <p>0379</p>
        <h3>网址</h3>
        <p>www.lmsk.cn/</p>
        <h3>用时参考</h3>
        <p>3小时以上</p>
    </div>
    <h2>交通</h2>

    <h2>门票</h2>

    <h2>开放时间</h2>


</div>
<jsp:include page="../WEB-INF/views/footer.jsp"></jsp:include>
</body>
</html>