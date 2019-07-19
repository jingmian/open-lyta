<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>洛阳旅游网-首页</title>
    <link rel="stylesheet" href="./css/index.css">
</head>
<body>
<jsp:include page="WEB-INF/views/header.jsp"></jsp:include>

<div id="main-slide" class="carousel slide" data-ride="carousel">

    <!-- 指示符 -->
    <ul class="carousel-indicators">
        <li data-target="#main-slide" data-slide-to="0" class="active"></li>
        <li data-target="#main-slide" data-slide-to="1"></li>
        <li data-target="#main-slide" data-slide-to="2"></li>
        <li data-target="#main-slide" data-slide-to="3"></li>
    </ul>

    <!-- 轮播图片 -->
    <div class="carousel-inner">
        <div class="carousel-item active ">
            <img src="/img/index/mdwhj.jpg" class="slider-img">
            <div class="carousel-caption">
                <p>中国洛阳牡丹文化节</p>
            </div>
        </div>
        <div class="carousel-item">
            <img src="/img/index/glm.jpg" class="slider-img">
            <div class="carousel-caption">
                <p>关林庙</p>
            </div>
        </div>
        <div class="carousel-item">
            <img src="/img/index/lm.jpg" class="slider-img">
            <div class="carousel-caption">
                <p>天子驾六博物馆</p>
            </div>
        </div>
        <div class="carousel-item">
            <img src="/img/index/ddmyz.jpg" class="slider-img">
            <div class="carousel-caption">
                <p>定鼎门遗址</p>
            </div>
        </div>
    </div>

    <!-- 左右切换按钮 -->
    <a class="carousel-control-prev" href="#main-slide" data-slide="prev">
        <span class="carousel-control-prev-icon"></span>
    </a>
    <a class="carousel-control-next" href="#main-slide" data-slide="next">
        <span class="carousel-control-next-icon"></span>
    </a>

</div>

<div class="alert alert-warning alert-dismissible">
    <button type="button" class="close" data-dismiss="alert">&times;</button>
    <a href="./like.jsp">猜你喜欢-点我点我^_^</a>
</div>

<div style="padding-top: 20px;padding-left: 20px">
    <a href="situation.jsp#list-item-2">
        <h2>推荐路线</h2>
    </a>
</div>

<div class="index-main-block" id="index-main-block1" style="display: flex">


    <div class="border">
        <img class="img-fluid" src="/img/index/route_img.png" alt="Card image">
        <h4>推荐4日线路</h4>
        <a href="situation.jsp#list-item-2" class="btn btn-warning">查看详情</a>
    </div>

    <div class="border">
        <img class="img-fluid" src="/img/index/route_img2.png" alt="Card image">
        <h4>其他参考线路</h4>
        <a href="situation.jsp#list-route-2" class="btn btn-warning">查看详情</a>
    </div>

</div>

<div class="index-main-block">
    <a href="/message/page" class="thumbnail">
        <h2>游记社区</h2>
    </a>

    <div class="mt-3">
        <div class="border" id="">
            <div>
                <h4>观赏完牡丹，老洛阳人带你探寻舌尖上的洛阳</h4>
                <p>
                    听说还有不少朋友还想了解洛阳地道的美食小吃，问我算是问对人了，因为我就是一个疯狂而执着的吃货，所以就再写了一篇，
                    把自己和兄弟们最爱吃的店推荐给你们，如果想吃特色，这些地方值得一去。
                </p>
                <p>
                    是洛阳最著名和最有代表性的美食，所以多说两句，跟大家简单讲讲啥叫洛阳水席。
                    洛阳水席始于唐代，至今已有1000多年的历史，是中国迄今保留下来的历史最久远的名宴之一...
                </p>
            </div>
            <div>
                <img src="/img/index/lyms.jpg" class="img-fluid rounded-circle">
            </div>
        </div>
    </div>

    <div class="mt-3">
        <div class="border">
            <div>
                <img src="/img/scenic/bms_cm.jpeg" class="img-fluid rounded-circle">
            </div>

            <div class="">
                <h4>牡丹花开游洛阳 白马寺钟声阵阵</h4>
                <p>
                    话说只要一临近假期，我这心里就开始不舒服，每天想的都是哪里我还没有去玩过或者现在这个季节去哪里会好玩一点。
                    昨天夜里，我突然灵光一现，现在已经是四月了，正是牡丹花盛开的季节。
                    于是乎，制定行程，预订酒店，一气呵成， 洛阳 之行就此确定，只待假期到来...
                </p>
            </div>
        </div>
    </div>

</div>


<div class="index-main-block">
    <a href="/scenic/scenicList" class="thumbnail">
        <h2>所有景点</h2>
    </a>
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
                <img class="card-img-debug" src="/img/scenic/glm.jpg" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">关林庙</h5>
                    <p class="card-text">人文景区</p>
                    <input type="hidden" name="scenicId" value="11">
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

        <div class="card  card-body-debug">
            <form action="/scenic/content" method="post">
                <img class="card-img-debug" src="/img/scenic/lylj.jpg" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">洛阳老街</h5>
                    <p class="card-text">人文景区</p>
                    <input type="hidden" name="scenicId" value="13">
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
                <img class="card-img-debug" src="/img/scenic/lysshg.jpg" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">洛阳山陕会馆</h5>
                    <p class="card-text">人文景区</p>
                    <input type="hidden" name="scenicId" value="15">
                    <input type="submit" class="btn btn-warning" value="查看详情">
                </div>
            </form>
        </div>

        <div class="card  card-body-debug">
            <form action="/scenic/content" method="post">
                <img class="card-img-debug" src="/img/scenic/wft.jpg" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">文峰塔</h5>
                    <p class="card-text">人文景区</p>
                    <input type="hidden" name="scenicId" value="16">
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
    </div>
</div>


<jsp:include page="WEB-INF/views/footer.jsp"></jsp:include>
</body>
</html>