<%--
  Created by IntelliJ IDEA.
  User: v
  Date: 2019/4/4
  Time: 0:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>洛阳旅游网-应用中心</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="/css/app-center.css">

</head>
<body>
<jsp:include page="WEB-INF/views/header.jsp"></jsp:include>
<div class="container container-debug">
    <section class="hero bg-light">
        <div class="container hero__container--medium hero-container-debug">
            <div class="hero__outer">
                <div class="hero__inner hero__inner--top text-center text-center-debug">
                    <h1 class="hero__title hero--boxed hero--center mb-20">应用中心</h1>
                    <button type="button" class="btn btn-default">
                        <a href="#download-now">
                            立即查看
                        </a>
                    </button>
                </div>
                <img src="/img/index/d-title-img.png" class="hero__im hidden-xs app-main-img" alt="">
            </div>
        </div>
    </section>

    <div class="row">
        <div class="col-sm-6 col-md-3">
            <div class="thumbnail" id="download-now">
                <img src="/img/qr_code/qr_lyta_gongluepdf.png"
                     alt="缩略图">
                <div class="caption">
                    <h3>洛阳旅游攻略PDF</h3>
                    <p>
                        <a href="./assets/lytagonglue.pdf" class="btn btn-warning" role="button">
                            立即下载
                        </a>
                    </p>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-md-3">
            <div class="thumbnail">
                <img src="/img/qr_code/qr_lyta_gonglueimg.png"
                     alt="缩略图">
                <div class="caption">
                    <h3>洛阳旅游攻略图片版</h3>
                    <p>
                        <a href="https://mp.weixin.qq.com/s/WTwv6eEP0hSySIgNqszkvg" class="btn btn-warning" role="button">
                            立即查看
                        </a>
                    </p>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-md-3">
            <div class="thumbnail">
                <img src='/img/qr_code/qr_lyta_android.png'>
                <div class="caption">
                    <h3>洛阳旅游官方客户端</h3>
                    <p>
                        <a href="http://lyly.lyta.com.cn" class="btn btn-warning" role="button">
                            官方下载
                        </a>
                    </p>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-md-3">
            <div class="thumbnail">
                <img src='/img/qr_code/qr_lyta_wx_dy.png'>
                <div class="caption">
                    <h3>洛阳旅游微信公众号</h3>
                    <p>
                        <a href="https://weixin.qq.com/cgi-bin/readtemplate?uin=&stype=&promote=&fr=&lang=zh_CN&ADTAG=&check=false&nav=download&t=weixin_download_list&loc=readtemplate,weixin,body,6" class="btn btn-outline-warning" role="button">
                            微信扫码
                        </a>
                    </p>
                </div>
            </div>
        </div>
    </div>

</div>
<jsp:include page="WEB-INF/views/footer.jsp"></jsp:include>
</body>
</html>
