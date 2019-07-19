<%--
  Created by IntelliJ IDEA.
  User: v
  Date: 2019/5/11
  Time: 11:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>洛阳旅游网-首页</title>
    <link rel="stylesheet" href="./css/index.css">
</head>
<body>
<jsp:include page="WEB-INF/views/header.jsp"></jsp:include>
<div class="container">
    <div>
        <h1>猜你喜欢</h1>
    </div>
</div>

<div id="senic_list">
    <div class="card  card-body-debug">

        <form action="/scenic/content" method="post">
            <img class="card-img-debug" src="/img/scenic/bms.jpg" alt="Card image cap">
            <div class="card-body">
                <h5 class="card-title">白马寺</h5>
                <p class="card-text">人文景区</p>
                <input type="hidden" name="scenicId" value="10">
                <input type="submit" class="btn btn-warning" value="查看详情">
            </div>
        </form>
    </div>

    <div class="card  card-body-debug">
        <form action="/scenic/content" method="post">
            <img class="card-img-debug" src="/img/scenic/lmsk.jpg" alt="Card image cap">
            <div class="card-body">
                <h5 class="card-title">龙门石窟</h5>
                <p class="card-text">人文景区</p>
                <input type="hidden" name="scenicId" value="17">
                <input type="submit" class="btn btn-warning" value="查看详情">
            </div>
        </form>
    </div>

    <div class="card  card-body-debug">
        <form action="/scenic/content" method="post">
            <img class="card-img-debug" src="/img/scenic/ttmt.jpg" alt="Card image cap">
            <div class="card-body">
                <h5 class="card-title">唐朝明堂天堂遗址</h5>
                <p class="card-text">人文景区</p>
                <input type="hidden" name="scenicId" value="14">
                <input type="submit" class="btn btn-warning" value="查看详情">
            </div>
        </form>
    </div>

    <div class="card  card-body-debug">
        <form action="/scenic/content" method="post">
            <img class="card-img-debug" src="/img/scenic/ljm.jpg" alt="Card image cap">
            <div class="card-body">
                <h5 class="card-title">丽景门</h5>
                <p class="card-text">人文景区</p>
                <input type="hidden" name="scenicId" value="12">
                <input type="submit" class="btn btn-warning" value="查看详情">
            </div>
        </form>
    </div>

</div>

<jsp:include page="WEB-INF/views/footer.jsp"></jsp:include>
</body>
</html>
