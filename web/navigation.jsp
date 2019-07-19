<%--
  Created by IntelliJ IDEA.
  User: Administrator-V
  Date: 2019/4/3
  Time: 15:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>洛阳旅游网-导航</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

</head>
<body>
    <jsp:include page="WEB-INF/views/header.jsp"></jsp:include>
    <div class="container">

    </div>

</body>
<script>
    function load_home() {
        document.getElementById("container").innerHTML = '<object type="text/html" data="https://ditu.amap.com/search?query=%E6%B4%9B%E9%98%B3%E5%B8%82&city=410311&geoobj=112.347436%7C34.558916%7C112.631364%7C34.772676&zoom=12" width="100%" height="100%"></object>';
    }
</script>
</html>
