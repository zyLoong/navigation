<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <title>用户注册</title>
    <!-- Bootstrap -->
    <link href="${APP_PATH}/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="${APP_PATH}/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" media="screen">
    <link href="${APP_PATH}/assets/styles.css" rel="stylesheet" media="screen">

    <script src="${APP_PATH}/vendors/modernizr-2.6.2-respond-1.1.0.min.js"></script>
</head>
<body id="login">
<div class="container">

    <form class="form-signin">
        <h2 class="form-signin-heading">注册</h2>
        <input type="text" id="username" class="input-block-level" placeholder="用户名">
        <input type="password" id="password" class="input-block-level" placeholder="密码">
        <input type="password" id="confirmPassword" class="input-block-level" placeholder="确认密码">
        <input type="email" id="email" class="input-block-level" placeholder="邮箱">

        <button class="btn btn-large btn-primary" type="button" onclick="regist()">注册</button>
    </form>

</div> <!-- /container -->
<script src="${APP_PATH}/vendors/jquery-1.9.1.min.js"></script>
<script src="${APP_PATH}/bootstrap/js/bootstrap.min.js"></script>
<script src="${APP_PATH}/layer/layer.js"></script>
</body>

<script>
    function regist() {
        var username = $("#username").val();
        var password = $("#password").val();
        var confirmPassword = $("#confirmPassword").val();
        var email = $("#email").val();

        $.ajax({
            type: "post",
            url: "${APP_PATH}/user/doRegist",
            data: {
                "username": username,
                "password": password,
                "email": email
            },
            beforeSend: function () {
                if (username == "") {
                    layer.msg("用户名不能为空", {time: 2000, icon: 5, shift: 6});
                    return false;
                }
                if (password == "") {
                    layer.msg("密码不能为空", {time: 2000, icon: 5, shift: 6});
                    return false;
                }
                if (email == "") {
                    layer.msg("邮箱不能为空", {time: 2000, icon: 5, shift: 6});
                    return false;
                }
                if (password != confirmPassword) {
                    layer.msg("两次输入密码不一致", {time: 2000, icon: 5, shift: 6});
                    return false;
                }
                var str = /^[a-z0-9_-]{3,16}$/;
                if (!str.test(username)) {
                    layer.msg("【账号】格式有误，请输入3-16位字母、数字、下划线组成的用户名，以字母开头", {time: 2000, icon: 5, shift: 6});
                    return false;
                }
                str = /[A-Za-z0-9]{3,16}$/;
                if (!str.test(password)) {
                    layer.msg("【密码】格式有误，请输入3-16位字母和数字组成的密码", {time: 2000, icon: 5, shift: 6});
                    return false;
                }
                str = /\w[-\w.+]*@([A-Za-z0-9][-A-Za-z0-9]+\.)+[A-Za-z]{2,14}/;
                if (!str.test(email)) {
                    layer.msg("【邮箱】格式有误", {time: 2000, icon: 5, shift: 6});
                    return false;
                }
                return true;
            },
            success: function (result) {
                if (result.success) {
                    layer.msg(result.message, {time: 1000, icon: 6});
                    setTimeout(function () {
                        window.location.href = "${APP_PATH}/user/toLogin";
                    }, 1000);
                } else {
                    layer.msg(result.message, {time: 2000, icon: 5, shift: 6});
                }
            }
        })
    }
</script>
</html>