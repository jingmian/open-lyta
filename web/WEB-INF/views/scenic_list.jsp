<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ page isELIgnored="false" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator-V
  Date: 2019/4/3
  Time: 17:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>洛阳旅游网-景点列表</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container">
    <h1>洛阳全部景点</h1>
    <div class="row">
        <c:forEach items="${scenicList}" var="scList">
        <div class="card">
            <form action="/scenic/content" method="post">
                <img alt="100%x180" src="../../img/scenic/${scList.scenicImgPath}" style="height: 240px; width: 320px;" >
                <div class="caption">
                    <h3>${scList.scenicName}</h3>
                    <p>${scList.scenicType}</p>
                    <input type="hidden" name="scenicId" value="${scList.scenicId}">
                    <input type="submit" class="btn btn-warning" value="查看详情">
                </div>
            </form>
        </div>

        </c:forEach>
    </div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>

