<%--
  Created by IntelliJ IDEA.
  User: Administrator-V
  Date: 2019/4/7
  Time: 12:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>正在退出登录</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

</head>
<body>
<jsp:include page="WEB-INF/views/header.jsp"></jsp:include>
<div class="container">
    <h1>正在退出登录...</h1>
</div>

<jsp:include page="WEB-INF/views/footer.jsp"></jsp:include>

<% session.invalidate(); %>

<jsp:forward page="WEB-INF/views/login.jsp"></jsp:forward>
</body>
</html>
