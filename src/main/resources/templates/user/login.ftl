<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <title>用户登录</title>
    <!-- Bootstrap -->
    <link href="${APP_PATH}/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="${APP_PATH}/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" media="screen">
    <link href="${APP_PATH}/assets/styles.css" rel="stylesheet" media="screen">

    <script src="${APP_PATH}/vendors/modernizr-2.6.2-respond-1.1.0.min.js"></script>
</head>
<body id="login">
<div class="container">

    <form class="form-signin">
        <h2 class="form-signin-heading">登录</h2>
        <input type="text" id="username" value="user" class="input-block-level" placeholder="用户名">
        <input type="password" id="password" value="123" class="input-block-level" placeholder="密码">
        <label class="checkbox">
            <input type="checkbox" value="remember-me"> 记住我
        </label>
        <button class="btn btn-large btn-primary" type="button" onclick="login()">登录</button>
        <button class="btn btn-large btn-primary" type="button" onclick="forgetPassword">忘记密码</button>
        <button class="btn btn-large btn-primary" type="button" onclick="regist()">去注册</button>
    </form>

</div> <!-- /container -->
<script src="${APP_PATH}/vendors/jquery-1.9.1.min.js"></script>
<script src="${APP_PATH}/bootstrap/js/bootstrap.min.js"></script>
<script src="${APP_PATH}/layer/layer.js"></script>
</body>

<script>

    function regist() {
        window.location.href = "${APP_PATH}/user/toRegist";
    }

    function login() {
        var username = $("#username").val();
        var password = $("#password").val();

        if (username == "") {
            layer.msg("请输入账号", {time: 1000, icon: 5, shift: 6});
            return false;
        }
        if (password == "") {
            layer.msg("请输入密码", {time: 1000, icon: 5, shift: 6});
            return false;
        }
        var str = /^[A-Za-z0-9_-]{3,16}$/;
        if (!str.test(username)) {
            layer.msg("账号格式有误", {time: 2000, icon: 5, shift: 6});
            return false;
        }
        str = /[A-Za-z0-9]{3,16}$/;
        if (!str.test(password)) {
            layer.msg("密码格式有误", {time: 2000, icon: 5, shift: 6});
            return false;
        }

        $.ajax({
            type: "post",
            url: "${APP_PATH}/user/doLogin",
            data: {
                "username": username,
                "password": password
            },
            success: function (result) {
                if (result.success) {
                    window.location.href = '${APP_PATH}' + result.message;
                } else {
                    layer.msg("账号或密码错误", {time: 1000, icon: 5, shift: 6});
                }
            }
        })
    }
</script>
</html>

