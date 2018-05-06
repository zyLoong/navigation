<!DOCTYPE html>
<html>

<head>
    <title>Tables</title>
    <!-- Bootstrap -->
    <link href="${APP_PATH}/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="${APP_PATH}/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" media="screen">
    <link href="${APP_PATH}/assets/styles.css" rel="stylesheet" media="screen">
    <link href="${APP_PATH}/assets/DT_bootstrap.css" rel="stylesheet" media="screen">
    <script src="${APP_PATH}/vendors/modernizr-2.6.2-respond-1.1.0.min.js"></script>
</head>

<body>
<div class="navbar navbar-fixed-top">
<#include "${APP_PATH}/topContainer.ftl">
</div>
<div class="container-fluid">
    <div class="row-fluid">

        <div class="span3" id="sidebar">
            <ul class="nav nav-list bs-docs-sidenav nav-collapse collapse">
                <li id="-1">
                    <a onclick="load('-1')"><i class="icon-chevron-right"></i> 全部</a>
                </li>
                <li id="6">
                    <a onclick="load('6')"><i class="icon-chevron-right"></i> 常用</a>
                </li>
                <li id="2">
                    <a onclick="load('2')"><i class="icon-chevron-right"></i> 工具</a>
                </li>
                <li id="7">
                    <a onclick="load('7')"><i class="icon-chevron-right"></i> 博客</a>
                </li>
                <li id="5">
                    <a onclick="load('5')"><i class="icon-chevron-right"></i> 进阶</a>
                </li>
                <li id="3">
                    <a onclick="load('3')"><i class="icon-chevron-right"></i> 开源</a>
                </li>
                <li id="4">
                    <a onclick="load('4')"><i class="icon-chevron-right"></i> 社区</a>
                </li>
                <li id="1">
                    <a onclick="load('1')"><i class="icon-chevron-right"></i> 工作</a>
                </li>
                <li id="0">
                    <a onclick="load('0')"><i class="icon-chevron-right"></i> 其他</a>
                </li>
                <li>
                    <a href="${APP_PATH}/index"><i class="icon-chevron-right"></i> 返回首页</a>
                </li>
            </ul>
        </div>

        <!--/span-->
        <div class="span9" id="content">
            <div class="row-fluid">


                <!-- block -->

                <div class="block">
                    <div class="navbar navbar-inner block-header">
                        <div class="muted pull-left">Striped Table</div>
                    </div>
                    <div class="block-content collapse in">
                        <div class="span12">
                            <div class="table-toolbar">
                                <div class="btn-group">
                                    <a href="#">
                                        <button id="addResource"
                                                onclick="window.location.href='${APP_PATH}/user/toGuestAddResource'"
                                                class="btn btn-success">添加<i
                                                class="icon-plus icon-white"></i>
                                        </button>
                                    </a>
                                </div>
                            </div>
                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th>名称</th>
                                    <th>URL</th>
                                    <th>贡献者</th>
                                    <th>提交时间</th>
                                    <th>点击量</th>
                                    <th>收藏</th>
                                </tr>
                                </thead>
                                <tbody>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <!-- /block -->
            </div>
        </div>
    </div>
    <hr>
<#--<footer>-->
<#--<p>&copy; Vincent Gabriel 2013 - More Templates <a href="http://www.cssmoban.com/" target="_blank"-->
<#--title="cssmoban">cssmoban</a>-->
<#--<a onclick="toUrl('a')">aaa</a>-->

<#--</footer>-->
</div>

<!--/.fluid-container-->

<script src="${APP_PATH}/vendors/jquery-1.9.1.js"></script>
<script src="${APP_PATH}/bootstrap/js/bootstrap.min.js"></script>
<script src="${APP_PATH}/vendors/datatables/js/jquery.dataTables.min.js"></script>


<script src="${APP_PATH}/assets/scripts.js"></script>
<script src="${APP_PATH}/assets/DT_bootstrap.js"></script>
<script src="${APP_PATH}/layer/layer.js"></script>

<script>
    $(function () {
        load(${type});
    });

    function load(type) {
        $("li").attr("class", "");
        $("#" + type).attr("class", "active");

        $.ajax({
            type: "post",
            url: '${APP_PATH}/resource/getResourceByType',
            data: {
                type: type
            },
            success: function (result) {
                if (result.success) {
                    var content = '';
                    $.each(result.data, function (i, e) {

//                    <th>名称</th>
//                    <th>URL</th>
//                    <th>贡献者</th>
//                    <th>提交时间</th>
//                    <th>点击量</th>
                        content = content + '<tr class="odd gradeX">';
                        content = content + '    <td>' + e.name + '</td>';
                        content = content + '    <td>  <a onclick="clickUrl(' + e.id + ')" target="_blank" href="' + e.url + '">' + e.url + '</a></td>';
                        content = content + '    <td class="center">' + e.contributorname + '</td>';
                        content = content + '    <td class="center">' + e.createtime + '</td>';
                        content = content + '    <td class="center">' + e.frequency + '</td>';
                        content = content + '    <td class="center"><button onclick="collection(' + e.id + ')" ><i class="icon-heart"></i></button></td>';
//                                                                                    collection(\' + e.id + '")
                        content = content + '</tr>';
                    });
                    $("tbody").html(content);
                } else {
                    //                alert(result.message)
                }
            }

        });
    }

    //  页面加载后异步加载用户所提交过的所有资源

    function collection(resourceid) {
        $.ajax({
            type: "post",
            url: "${APP_PATH}/user/collection",
            data: {
                resourceid: resourceid
            },
            success: function (result) {
                if (result.success) {
                    layer.msg(result.message, {time: 1000, icon: 6});
                } else {
                    layer.msg(result.message, {time: 1000, icon: 5, shift: 6});
                }
            }
        })
    }

    function clickUrl(id) {
        $.ajax({
            type: "post",
            url: "${APP_PATH}/user/clickUrl",
            data: {
                id: id
            }
        })
    }

</script>
</body>

</html>