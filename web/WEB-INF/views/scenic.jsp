<%--
  Created by IntelliJ IDEA.
  User: Administrator-V
  Date: 2019/4/12
  Time: 18:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>洛阳旅游网-景点</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/scenic.css">
</head>
<body>
<jsp:include page="./header.jsp"></jsp:include>
<div class="container">
    <h1 style="margin: 20px">${scenicName}</h1>
    <div class="m-auto">
        <img class="img-fluid rounded float-md-none " src="<%=basePath %>img/scenic/${scenicImgPath}" class="img-rounded" alt="scenic-img">
    </div>
    <p class="scenic-p">
    <h4>
        ${scenicContent}
    </h4>
    </p>
    <h3>票价:</h3>
    <p>${price}</p>
    <h3>开放时间:</h3>
    <p>${openTime}</p>
    <h3>景区地址:</h3>
    <p>${scenicAddress}</p>
</div>
<jsp:include page="./footer.jsp"></jsp:include>
</body>
</html>