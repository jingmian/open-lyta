$(function(){

    if(document.register.username.value=='')
    {
        alert("请检查用户名是否为空！");
        return false;
    }
    if(document.register.password.value=='')
    {
        alert("请检查您的密码是否为空！");
        return false;
    }
    if(document.register.password.value.length<6){
        alert("您的密码长度小于6！");
        return false;
    }

    //发送验证码
    /*$(".sendVerifyCode").on("click", function(){
        var phone = $("input[name=phone]").val();
        $.ajax({
            url: getBasePath()+"/sendSms",
            async : true,
            type: "post",
            dataType: "json",
            data: {"phone":phone},
            success: function (data) {
                if(data == 'fail'){
                    alert("发送验证码失败");
                    return ;
                }
            }
        });
    })*/
    //提交
    /*$(".sub-btn").on("click", function(){
        var data = {};
        data.userId = $.trim($("input[name=username]").val());
        data.password = $.trim($("input[name=password]").val());
        data.phone = $.trim($("input[name=phone]").val());
        data.verifyCode = $.trim($("input[name=verifyCode]").val());
        $.ajax({
            url: getBasePath()+"/register",
            async : true,
            type: "post",
            dataType: "json",
            data: data,
            success: function (data) {
                if(data == 'fail'){
                    alert("注册失败");
                    return ;
                }
                alert("注册成功");
            }
        });
    })*/
});