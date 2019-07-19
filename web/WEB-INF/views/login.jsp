<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%> <%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>登录</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../../css/login.css">


    <script type="text/javascript">
        function changeImg() {
            var img = document.getElementById("img");
            img.src = "/user/get_img?date=" + new Date();
        }

        function checkVerificationCode() {
            var verificationCode = document.getElementById('verificationCode').value;
            var flag = (getCookie('v_c_v') == verificationCode);
            return true;
            if (!flag) {
                alert('验证码输入错误');
            }
            return flag;
        }

        function getCookie(cookie_name) {
            var allCookies = document.cookie;
            var cookie_pos = allCookies.indexOf(cookie_name);   //如果找到了索引，就代表cookie存在
            if (cookie_pos != -1) {
                cookie_pos += cookie_name.length + 1;
                var cookie_end = allCookies.indexOf(";", cookie_pos);
                if (cookie_end == -1) {
                    cookie_end = allCookies.length;
                }
                return unescape(allCookies.substring(cookie_pos, cookie_end));
            }
            return null;
        }
    </script>
</head>
<body>
<jsp:include page="./header.jsp"></jsp:include>
<div class="container">
    <h1>登录</h1>
</div>
    <div class="login">
        <form action="/user/login" method="post">
            <div class="name">
                <input type="text" id="name" name="username" placeholder="请输入登录用户名">
                <p></p>
            </div>
            <div class="pwd">
                <input type="password" id="pwd" name="password" placeholder="6-16位密码，区分大小写，不能用空格">
                <p></p>
            </div>
            <div class="idcode">
                <input type="text" id="verificationCode" placeholder="请输入验证码">
                <a href='#' onclick="javascript:changeImg()">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;换一张</a>
                <span><img id="img" src="/user/get_img"/></span>
                <div class="clear"></div>
            </div>
            <div class="autoLogin">
                <a href="../../about.jsp">忘记密码</a>
            </div>
            <div>
                <div class="btn-red">
                    <input onclick="return checkVerificationCode();" type="submit" value="立即登录" class="btn btn-warning btn-lg btn-block">
                </div>

                <div class="btn-red">
                    <a class="btn btn-outline-warning btn-lg btn-block"  href="<%=basePath %>register.jsp">去注册</a>
                </div>
            </div>
        </form>
    </div>
<!--</div>-->
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>