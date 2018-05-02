<!doctype html>
<html>
<head>
    <meta charset="utf-8">

    <#--<script src="${APP_PATH}/jquery/jquery-2.1.1.min.js"></script>-->

    <link rel="stylesheet" href="${APP_PATH}/index/css/index.css">
    <link rel="stylesheet" href="${APP_PATH}/index/css/animate.css">
    <script type="text/javascript" src="${APP_PATH}/index/js/jquery-1.8.2.min.js"></script>
    <script type="text/javascript" src="${APP_PATH}/index/js/jquery.flexslider-min.js"></script>
    <link href="${APP_PATH}/index/css/animation.css" rel="stylesheet" media="screen" type="text/css">

    <title>无标题文档</title>
</head>

<body>
<div class="top">
    <!--header 开始-->
    <div class="header">
        <div class="con">

            <a class="logo" href="#"><img src="${APP_PATH}/index/img/logo.png"/></a>

            <div class="nav">
                <ul>
                    <li class="nav_li1"><a href="#">Android</a></li>
                    <li><a href="#">IOS</a></li>
                    <li><a href="#">前端</a></li>
                    <li><a href="#">后端</a></li>
                    <li><a href="#">设计</a></li>
                    <li><a href="#">面试</a></li>
                    <li><a href="#">我的书签</a></li>
                    <li class="nav_b"><a href="#">微信文章</a></li>
                </ul>
            </div>

            <div class="denglu">
                <script>
                    var str = "${Session.loginUser}";
                </script>
                <ul>
                <#if "${Session.loginUser}" >
                    <li><a onclick="userInfo()">${Session.loginUser.username}</a></li>
                    <#--<li><a onclick="logout()">退出</a></li>-->
                <#else >
                    <li><a onclick="login()">登录</a></li>
                    <li><a onclick="regist()">注册</a></li>
                </#if>
                </ul>
            </div>

        </div>
    </div>
    <!--header 结束-->
    <!--banner 开始-->


    <div class="flexslider">
        <ul class="slides">
            <li style="background:url(index/img/banner1.jpg) 50% 0 no-repeat;"></li>
            <li style="background:url(index/img/banner1.jpg) 50% 0 no-repeat;"></li>
            <li style="background:url(index/img/banner1.jpg) 50% 0 no-repeat;"></li>
        </ul>
    </div>


    <script type="text/javascript">
        $(document).ready(function () {
            $('.flexslider').flexslider({
                directionNav: true,
                pauseOnAction: false
            });
        });
    </script>
</div>
<!--banner 结束-->

<!--main 开始-->
<div class="main" id="main1">

    <!--nav2 开始-->
    <div class="nav2">
        <div class="con">
            <ul class="nav22">
                <li class="nav2_li1"><a href="#main1">常用网站</a></li>
                <li><a href="#main2">工具大全</a></li>
                <li><a href="#main3">经典博客</a></li>
                <li><a href="#main4">进阶之路</a></li>
                <li><a href="#main5">源码下载</a></li>
                <li><a href="#main6">开放平台</a></li>
                <li><a href="#main7">跳槽指南</a></li>
                <li class="nav_b"><a href="#main8">其他</a></li>
            </ul>
            <div class="denglu2">
                <ul>
                    <li><a onclick="login()">登录</a></li>
                    <li><a onclick="regist()">注册</a></li>
                </ul>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        var head = $(".top").height();
        $(window).scroll(function () {
            var topScr = $(window).scrollTop();

            if (topScr > head) {
                $(".nav2").addClass("fixed");
                $(".nav2").css("background", "#333");
                $('.nav2').css('opacity', '0.9');
                $('.nav2').css('padding-top', '10px');
                $('.nav2').css('padding-bottom', '10px');
                $(".nav2 li a").css("color", "#fff");
                $('.nav2 li a').hover(
                        function () {
                            $(this).css('color', '#f00')
                        }, //鼠标移入
                        function () {
                            $(this).css('color', '#fff')
                        } //鼠标移出
                );
            } else {
                $(".nav2").removeClass("fixed");
                $(".nav2").css("background", "#fff");
                $(".nav2 li a").css("color", "#333");
                $('.nav2').css('opacity', '1');

                $('.nav2').css('padding-top', '0');
                $('.nav2').css('padding-bottom', '0');
                $('.nav2 li a').hover(
                        function () {
                            $(this).css('color', '#f00')
                        }, //鼠标移入
                        function () {
                            $(this).css('color', '#333')
                        } //鼠标移出
                );
            }
        })
    </script>
    <!--nav2 结束-->

    <!--main1 开始-->

    <div class="main1">

        <a href="#">
            <div class="tit">
                <p class="z">常用网站</p>
                <p class="y">Useful Sites</p>
            </div>
        </a>

        <div class="main1_div">
            <div class="well">
                <a href="#">
                    <div class="well-item well1">
                        <div class="correct"><img class="" src="${APP_PATH}/index/img/baidu.jpg"/></div>
                        <div class="opposite">
                            <div class="">
                                <div class="opposite-content">
                                    <div class="opposite-content-text">
                                        百度
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
                <a href="#">
                    <div class="well-item well1">
                        <div class="correct"><img class="" src="${APP_PATH}/index/img/guge.jpg"/></div>
                        <div class="opposite">
                            <div class="">
                                <div class="opposite-content">
                                    <div class="opposite-content-text">
                                        谷歌
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
                <a href="#">
                    <div class="well-item well1">
                        <div class="correct"><img class="" src="${APP_PATH}/index/img/kaiyuan.jpg"/></div>
                        <div class="opposite">
                            <div class="">
                                <div class="opposite-content">
                                    <div class="opposite-content-text">
                                        开源中国
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
                <a href="#">
                    <div class="well-item">
                        <div class="correct"><img class="" src="${APP_PATH}/index/img/csdn.jpg"/></div>
                        <div class="opposite">
                            <div class="">
                                <div class="opposite-content">
                                    <div class="opposite-content-text">
                                        CSDN
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
                <a href="#">
                    <div class="well-item well1 well2">
                        <div class="correct"><img class="" src="${APP_PATH}/index/img/juejin.jpg"/></div>
                        <div class="opposite">
                            <div class="">
                                <div class="opposite-content">
                                    <div class="opposite-content-text">
                                        掘金
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
                <a href="#">
                    <div class="well-item well1 well2">
                        <div class="correct"><img class="" src="${APP_PATH}/index/img/jianshu.jpg"/></div>
                        <div class="opposite">
                            <div class="">
                                <div class="opposite-content">
                                    <div class="opposite-content-text">
                                        简书
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
                <a href="#">
                    <div class="well-item well1 well2">
                        <div class="correct"><img class="" src="${APP_PATH}/index/img/wan.jpg"/></div>
                        <div class="opposite">
                            <div class="">
                                <div class="opposite-content">
                                    <div class="opposite-content-text">
                                        玩Android
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
                <a href="#">
                    <div class="well-item well2">
                        <div class="correct"><img class="" src="${APP_PATH}/index/img/youxiang.jpg"/></div>
                        <div class="opposite">
                            <div class="">
                                <div class="opposite-content">
                                    <div class="opposite-content-text">
                                        腾讯企业邮箱
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>


            </div>
            <a class="more" id="main2" href="#">MORE+</a>

        </div>
    </div>
    <script>
        $(function () {
            var $animate = $('#animate');
            var $opposite = $('#opposite');
            $(".wrap").hover(function () {
                $animate.removeClass();
                $opposite.removeClass();
                $animate.addClass("test");
                $opposite.addClass('test2');
            }, function () {
                $animate.removeClass();
                $opposite.removeClass();
                $animate.addClass("test2");
                $opposite.addClass('test');
            });

            $(".well-item").hover(function () {
                $(this).find(".correct").children().removeClass();
                $(this).find(".opposite").children().removeClass();
                $(this).find(".correct").children().addClass("test");
                $(this).find(".opposite").children().addClass('test2');
            }, function () {
                $(this).find(".correct").children().removeClass();
                $(this).find(".opposite").children().removeClass();
                $(this).find(".correct").children().addClass("test2");
                $(this).find(".opposite").children().addClass('test');
            });

        });
    </script>
    <!--main1 结束-->

    <!--main2 开始-->

    <div class="main2">
        <a href="#">
            <div class="tit">
                <p class="z">工具大全</p>
                <p class="y">Tool</p>
            </div>
        </a>
        <div class="index_hd">
            <div class="fr hd_r major-list-outer">
                <ul class="major-list">
                    <li class="major-item major-item1">
                        <a href="#">
					<span class="txt-hide front-face">
						<img src="${APP_PATH}/index/img/androiddevtools.png">
					</span>
                            <span class="back-face to-left">androiddevtools</span>
                        </a>
                    </li>
                    <li class="major-item major-item1">
                        <a href="#">
					<span class="txt-hide front-face">
						<img src="${APP_PATH}/index/img/ide.png">
					</span>
                            <span class="back-face to-right">iDetaliAid</span>
                        </a>
                    </li>
                    <li class="major-item major-item1">
                        <a href="#">
					<span class="txt-hide front-face">
						<img src="${APP_PATH}/index/img/jinzhizhuanhuan.png">
					</span>
                            <span class="back-face to-top">进制转换</span>
                        </a>
                    </li>
                    <li class="major-item">
                        <a href="#">
					<span class="txt-hide front-face">
						<img src="${APP_PATH}/index/img/tubiao.png">
					</span>
                            <span class="back-face to-top">图标工具</span>
                        </a>
                    </li>
                    <li class="major-item major-item1 major-item2">
                        <a href="#">
					<span class="txt-hide front-face">
						<img src="${APP_PATH}/index/img/yasuo.png">
					</span>
                            <span class="back-face to-top">压缩图片</span>
                        </a>
                    </li>
                    <li class="major-item major-item1 major-item2">
                        <a href="#">
					<span class="txt-hide front-face">
						<img src="${APP_PATH}/index/img/yasuo.png">
					</span>
                            <span class="back-face to-top">压缩图片</span>
                        </a>
                    </li>
                    <li class="major-item major-item1 major-item2">
                        <a href="#">
					<span class="txt-hide front-face">
						<img src="${APP_PATH}/index/img/yasuo.png">
					</span>
                            <span class="back-face to-top">压缩图片</span>
                        </a>
                    </li>
                    <li class="major-item major-item2">
                        <a href="#">
					<span class="txt-hide front-face">
						<img src="${APP_PATH}/index/img/yasuo.png">
					</span>
                            <span class="back-face to-top">压缩图片</span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>

        <script type="text/javascript" src="${APP_PATH}/index/js/yidingzhezhao.js"></script>
        <script type="text/javascript" src="${APP_PATH}/index/js/yidingzhezhao2.js"></script>

        <a class="more2" id="main3" href="#">MORE+</a>

    </div>

    <!--main2 结束-->

    <!--main3 开始-->

    <div class="main1 main3">

        <a href="#">
            <div class="tit">
                <p class="z">经典博客</p>
                <p class="y">Blog</p>
            </div>
        </a>

        <div class="main1_div">
            <div class="well">
                <a href="#">
                    <div class="well-item well1">
                        <div class="correct"><img class="" src="${APP_PATH}/index/img/baidu.jpg"/></div>
                        <div class="opposite">
                            <div class="">
                                <div class="opposite-content">
                                    <div class="opposite-content-text">
                                        百度
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
                <a href="#">
                    <div class="well-item well1">
                        <div class="correct"><img class="" src="${APP_PATH}/index/img/guge.jpg"/></div>
                        <div class="opposite">
                            <div class="">
                                <div class="opposite-content">
                                    <div class="opposite-content-text">
                                        谷歌
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
                <a href="#">
                    <div class="well-item well1">
                        <div class="correct"><img class="" src="${APP_PATH}/index/img/kaiyuan.jpg"/></div>
                        <div class="opposite">
                            <div class="">
                                <div class="opposite-content">
                                    <div class="opposite-content-text">
                                        开源中国
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
                <a href="#">
                    <div class="well-item">
                        <div class="correct"><img class="" src="${APP_PATH}/index/img/csdn.jpg"/></div>
                        <div class="opposite">
                            <div class="">
                                <div class="opposite-content">
                                    <div class="opposite-content-text">
                                        CSDN
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
                <a href="#">
                    <div class="well-item well1 well2">
                        <div class="correct"><img class="" src="${APP_PATH}/index/img/juejin.jpg"/></div>
                        <div class="opposite">
                            <div class="">
                                <div class="opposite-content">
                                    <div class="opposite-content-text">
                                        掘金
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
                <a href="#">
                    <div class="well-item well1 well2">
                        <div class="correct"><img class="" src="${APP_PATH}/index/img/jianshu.jpg"/></div>
                        <div class="opposite">
                            <div class="">
                                <div class="opposite-content">
                                    <div class="opposite-content-text">
                                        简书
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
                <a href="#">
                    <div class="well-item well1 well2">
                        <div class="correct"><img class="" src="${APP_PATH}/index/img/wan.jpg"/></div>
                        <div class="opposite">
                            <div class="">
                                <div class="opposite-content">
                                    <div class="opposite-content-text">
                                        玩Android
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
                <a href="#">
                    <div class="well-item well2">
                        <div class="correct"><img class="" src="${APP_PATH}/index/img/youxiang.jpg"/></div>
                        <div class="opposite">
                            <div class="">
                                <div class="opposite-content">
                                    <div class="opposite-content-text">
                                        腾讯企业邮箱
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>


            </div>
            <a class="more" id="main4" href="#">MORE+</a>

        </div>
    </div>

    <!--main3 结束-->

    <!--main4 开始-->

    <div class="main2 main4">
        <a href="#">
            <div class="tit">
                <p class="z">进阶之路</p>
                <p class="y">Advanced</p>
            </div>
        </a>
        <div class="index_hd">
            <div class="fr hd_r major-list-outer">
                <ul class="major-list">
                    <li class="major-item major-item1">
                        <a href="#">
					<span class="txt-hide front-face">
						<img src="${APP_PATH}/index/img/androiddevtools.png">
					</span>
                            <span class="back-face to-left">androiddevtools</span>
                        </a>
                    </li>
                    <li class="major-item major-item1">
                        <a href="#">
					<span class="txt-hide front-face">
						<img src="${APP_PATH}/index/img/ide.png">
					</span>
                            <span class="back-face to-right">iDetaliAid</span>
                        </a>
                    </li>
                    <li class="major-item major-item1">
                        <a href="#">
					<span class="txt-hide front-face">
						<img src="${APP_PATH}/index/img/jinzhizhuanhuan.png">
					</span>
                            <span class="back-face to-top">进制转换</span>
                        </a>
                    </li>
                    <li class="major-item">
                        <a href="#">
					<span class="txt-hide front-face">
						<img src="${APP_PATH}/index/img/tubiao.png">
					</span>
                            <span class="back-face to-top">图标工具</span>
                        </a>
                    </li>
                    <li class="major-item major-item1 major-item2">
                        <a href="#">
					<span class="txt-hide front-face">
						<img src="${APP_PATH}/index/img/yasuo.png">
					</span>
                            <span class="back-face to-top">压缩图片</span>
                        </a>
                    </li>
                    <li class="major-item major-item1 major-item2">
                        <a href="#">
					<span class="txt-hide front-face">
						<img src="${APP_PATH}/index/img/yasuo.png">
					</span>
                            <span class="back-face to-top">压缩图片</span>
                        </a>
                    </li>
                    <li class="major-item major-item1 major-item2">
                        <a href="#">
					<span class="txt-hide front-face">
						<img src="${APP_PATH}/index/img/yasuo.png">
					</span>
                            <span class="back-face to-top">压缩图片</span>
                        </a>
                    </li>
                    <li class="major-item major-item2">
                        <a href="#">
					<span class="txt-hide front-face">
						<img src="${APP_PATH}/index/img/yasuo.png">
					</span>
                            <span class="back-face to-top">压缩图片</span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>

        <script type="text/javascript" src="${APP_PATH}/index/js/yidingzhezhao.js"></script>
        <script type="text/javascript" src="${APP_PATH}/index/js/yidingzhezhao2.js"></script>

        <a class="more2" id="main5" href="#">MORE+</a>

    </div>

    <!--main4 结束-->
    <!--main5 开始-->

    <div class="main1 main5">

        <a href="#">
            <div class="tit">
                <p class="z">源码下载</p>
                <p class="y">Source code</p>
            </div>
        </a>

        <div class="main1_div">
            <div class="well">
                <a href="#">
                    <div class="well-item well1">
                        <div class="correct"><img class="" src="${APP_PATH}/index/img/baidu.jpg"/></div>
                        <div class="opposite">
                            <div class="">
                                <div class="opposite-content">
                                    <div class="opposite-content-text">
                                        百度
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
                <a href="#">
                    <div class="well-item well1">
                        <div class="correct"><img class="" src="${APP_PATH}/index/img/guge.jpg"/></div>
                        <div class="opposite">
                            <div class="">
                                <div class="opposite-content">
                                    <div class="opposite-content-text">
                                        谷歌
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
                <a href="#">
                    <div class="well-item well1">
                        <div class="correct"><img class="" src="${APP_PATH}/index/img/kaiyuan.jpg"/></div>
                        <div class="opposite">
                            <div class="">
                                <div class="opposite-content">
                                    <div class="opposite-content-text">
                                        开源中国
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
                <a href="#">
                    <div class="well-item">
                        <div class="correct"><img class="" src="${APP_PATH}/index/img/csdn.jpg"/></div>
                        <div class="opposite">
                            <div class="">
                                <div class="opposite-content">
                                    <div class="opposite-content-text">
                                        CSDN
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
                <a href="#">
                    <div class="well-item well1 well2">
                        <div class="correct"><img class="" src="${APP_PATH}/index/img/juejin.jpg"/></div>
                        <div class="opposite">
                            <div class="">
                                <div class="opposite-content">
                                    <div class="opposite-content-text">
                                        掘金
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
                <a href="#">
                    <div class="well-item well1 well2">
                        <div class="correct"><img class="" src="${APP_PATH}/index/img/jianshu.jpg"/></div>
                        <div class="opposite">
                            <div class="">
                                <div class="opposite-content">
                                    <div class="opposite-content-text">
                                        简书
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
                <a href="#">
                    <div class="well-item well1 well2">
                        <div class="correct"><img class="" src="${APP_PATH}/index/img/wan.jpg"/></div>
                        <div class="opposite">
                            <div class="">
                                <div class="opposite-content">
                                    <div class="opposite-content-text">
                                        玩Android
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
                <a href="#">
                    <div class="well-item well2">
                        <div class="correct"><img class="" src="${APP_PATH}/index/img/youxiang.jpg"/></div>
                        <div class="opposite">
                            <div class="">
                                <div class="opposite-content">
                                    <div class="opposite-content-text">
                                        腾讯企业邮箱
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>


            </div>
            <a class="more" id="main6" href="#">MORE+</a>

        </div>
    </div>

    <!--main5 结束-->

    <!--main6 开始-->

    <div class="main2 main6">
        <a href="#">
            <div class="tit">
                <p class="z">开放平台</p>
                <p class="y">Platform</p>
            </div>
        </a>
        <div class="index_hd">
            <div class="fr hd_r major-list-outer">
                <ul class="major-list">
                    <li class="major-item major-item1">
                        <a href="#">
					<span class="txt-hide front-face">
						<img src="${APP_PATH}/index/img/androiddevtools.png">
					</span>
                            <span class="back-face to-left">androiddevtools</span>
                        </a>
                    </li>
                    <li class="major-item major-item1">
                        <a href="#">
					<span class="txt-hide front-face">
						<img src="${APP_PATH}/index/img/ide.png">
					</span>
                            <span class="back-face to-right">iDetaliAid</span>
                        </a>
                    </li>
                    <li class="major-item major-item1">
                        <a href="#">
					<span class="txt-hide front-face">
						<img src="${APP_PATH}/index/img/jinzhizhuanhuan.png">
					</span>
                            <span class="back-face to-top">进制转换</span>
                        </a>
                    </li>
                    <li class="major-item">
                        <a href="#">
					<span class="txt-hide front-face">
						<img src="${APP_PATH}/index/img/tubiao.png">
					</span>
                            <span class="back-face to-top">图标工具</span>
                        </a>
                    </li>
                    <li class="major-item major-item1 major-item2">
                        <a href="#">
					<span class="txt-hide front-face">
						<img src="${APP_PATH}/index/img/yasuo.png">
					</span>
                            <span class="back-face to-top">压缩图片</span>
                        </a>
                    </li>
                    <li class="major-item major-item1 major-item2">
                        <a href="#">
					<span class="txt-hide front-face">
						<img src="${APP_PATH}/index/img/yasuo.png">
					</span>
                            <span class="back-face to-top">压缩图片</span>
                        </a>
                    </li>
                    <li class="major-item major-item1 major-item2">
                        <a href="#">
					<span class="txt-hide front-face">
						<img src="${APP_PATH}/index/img/yasuo.png">
					</span>
                            <span class="back-face to-top">压缩图片</span>
                        </a>
                    </li>
                    <li class="major-item major-item2">
                        <a href="#">
					<span class="txt-hide front-face">
						<img src="${APP_PATH}/index/img/yasuo.png">
					</span>
                            <span class="back-face to-top">压缩图片</span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>

        <script type="text/javascript" src="${APP_PATH}/index/js/yidingzhezhao.js"></script>
        <script type="text/javascript" src="${APP_PATH}/index/js/yidingzhezhao2.js"></script>

        <a class="more2" id="main7" href="#">MORE+</a>

    </div>

    <!--main6 结束-->

    <!--main7 开始-->

    <div class="main1 main7">

        <a href="#">
            <div class="tit">
                <p class="z">跳槽指南</p>
                <p class="y">Change work</p>
            </div>
        </a>

        <div class="main1_div">
            <div class="well">
                <a href="#">
                    <div class="well-item well1">
                        <div class="correct"><img class="" src="${APP_PATH}/index/img/baidu.jpg"/></div>
                        <div class="opposite">
                            <div class="">
                                <div class="opposite-content">
                                    <div class="opposite-content-text">
                                        百度
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
                <a href="#">
                    <div class="well-item well1">
                        <div class="correct"><img class="" src="${APP_PATH}/index/img/guge.jpg"/></div>
                        <div class="opposite">
                            <div class="">
                                <div class="opposite-content">
                                    <div class="opposite-content-text">
                                        谷歌
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
                <a href="#">
                    <div class="well-item well1">
                        <div class="correct"><img class="" src="${APP_PATH}/index/img/kaiyuan.jpg"/></div>
                        <div class="opposite">
                            <div class="">
                                <div class="opposite-content">
                                    <div class="opposite-content-text">
                                        开源中国
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
                <a href="#">
                    <div class="well-item">
                        <div class="correct"><img class="" src="${APP_PATH}/index/img/csdn.jpg"/></div>
                        <div class="opposite">
                            <div class="">
                                <div class="opposite-content">
                                    <div class="opposite-content-text">
                                        CSDN
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
                <a href="#">
                    <div class="well-item well1 well2">
                        <div class="correct"><img class="" src="${APP_PATH}/index/img/juejin.jpg"/></div>
                        <div class="opposite">
                            <div class="">
                                <div class="opposite-content">
                                    <div class="opposite-content-text">
                                        掘金
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
                <a href="#">
                    <div class="well-item well1 well2">
                        <div class="correct"><img class="" src="${APP_PATH}/index/img/jianshu.jpg"/></div>
                        <div class="opposite">
                            <div class="">
                                <div class="opposite-content">
                                    <div class="opposite-content-text">
                                        简书
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
                <a href="#">
                    <div class="well-item well1 well2">
                        <div class="correct"><img class="" src="${APP_PATH}/index/img/wan.jpg"/></div>
                        <div class="opposite">
                            <div class="">
                                <div class="opposite-content">
                                    <div class="opposite-content-text">
                                        玩Android
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
                <a href="#">
                    <div class="well-item well2">
                        <div class="correct"><img class="" src="${APP_PATH}/index/img/youxiang.jpg"/></div>
                        <div class="opposite">
                            <div class="">
                                <div class="opposite-content">
                                    <div class="opposite-content-text">
                                        腾讯企业邮箱
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>


            </div>
            <a class="more" id="main8" href="#">MORE+</a>

        </div>
    </div>

    <!--main7 结束-->

    <!--main8 开始-->

    <div class="main2 main8">
        <a href="#">
            <div class="tit">
                <p class="z">其它</p>
                <p class="y">Other</p>
            </div>
        </a>
        <div class="index_hd">
            <div class="fr hd_r major-list-outer">
                <ul class="major-list">
                    <li class="major-item major-item1">
                        <a href="#">
					<span class="txt-hide front-face">
						<img src="${APP_PATH}/index/img/androiddevtools.png">
					</span>
                            <span class="back-face to-left">androiddevtools</span>
                        </a>
                    </li>
                    <li class="major-item major-item1">
                        <a href="#">
					<span class="txt-hide front-face">
						<img src="${APP_PATH}/index/img/ide.png">
					</span>
                            <span class="back-face to-right">iDetaliAid</span>
                        </a>
                    </li>
                    <li class="major-item major-item1">
                        <a href="#">
					<span class="txt-hide front-face">
						<img src="${APP_PATH}/index/img/jinzhizhuanhuan.png">
					</span>
                            <span class="back-face to-top">进制转换</span>
                        </a>
                    </li>
                    <li class="major-item">
                        <a href="#">
					<span class="txt-hide front-face">
						<img src="${APP_PATH}/index/img/tubiao.png">
					</span>
                            <span class="back-face to-top">图标工具</span>
                        </a>
                    </li>
                    <li class="major-item major-item1 major-item2">
                        <a href="#">
					<span class="txt-hide front-face">
						<img src="${APP_PATH}/index/img/yasuo.png">
					</span>
                            <span class="back-face to-top">压缩图片</span>
                        </a>
                    </li>
                    <li class="major-item major-item1 major-item2">
                        <a href="#">
					<span class="txt-hide front-face">
						<img src="${APP_PATH}/index/img/yasuo.png">
					</span>
                            <span class="back-face to-top">压缩图片</span>
                        </a>
                    </li>
                    <li class="major-item major-item1 major-item2">
                        <a href="#">
					<span class="txt-hide front-face">
						<img src="${APP_PATH}/index/img/yasuo.png">
					</span>
                            <span class="back-face to-top">压缩图片</span>
                        </a>
                    </li>
                    <li class="major-item major-item2">
                        <a href="#">
					<span class="txt-hide front-face">
						<img src="${APP_PATH}/index/img/yasuo.png">
					</span>
                            <span class="back-face to-top">压缩图片</span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>

        <script type="text/javascript" src="${APP_PATH}index/js/yidingzhezhao.js"></script>
        <script type="text/javascript" src="${APP_PATH}index/js/yidingzhezhao2.js"></script>
        <script src="${APP_PATH}/layer/layer.js"></script>
        <a class="more2" href="#">MORE+</a>

    </div>

    <!--main8 结束-->

</div>
<!--main 结束-->
<!--footer 开始-->
<div class="footer">
    <div class="link">
        <div class="con">
            <p class="l_tit">友情链接</p>
            <ul>
                <li>
                    <a href="#">天津大学</a>
                </li>
                <li>
                    <a href="www.baidu.com">百度</a>
                </li>
            </ul>
        </div>
    </div>

    <div class="copy"><p>COPYRIGHT 2018 © 天津大学教育学院朱燚龙毕业设计作品 ALLRIGHT RESERVED</p></div>
</div>
<!--footer 结束-->
</body>

<script>

    function regist() {
        window.location.href = "${APP_PATH}/user/toRegist"
    }

    function login() {
        window.location.href = "${APP_PATH}/user/toLogin";
    }

    function logout() {
        window.location.href = "${APP_PATH}/user/logout";
    }

    function userInfo() {
        window.location.href = "${APP_PATH}/user/userInfo";
    }
</script>


</html>
