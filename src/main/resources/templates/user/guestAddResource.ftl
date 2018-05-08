<!DOCTYPE html>
<html>

<head>
    <title>提交资源</title>
    <!-- Bootstrap -->
    <link href="${APP_PATH}/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="${APP_PATH}/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" media="screen">
    <link href="${APP_PATH}/assets/styles.css" rel="stylesheet" media="screen">
    <link href="${APP_PATH}/assets/DT_bootstrap.css" rel="stylesheet" media="screen">
    <script src="${APP_PATH}/vendors/modernizr-2.6.2-respond-1.1.0.min.js"></script>
</head>

<body>
<div class="navbar navbar-fixed-top">
<#include "${APP_PATH}/user/topContainer.ftl">
</div>

<div class="container-fluid">
    <div class="row-fluid">
        <div class="span3" id="sidebar">
        <#--左边栏开始-->
        <#--<#include "${APP_PATH}/user/leftContainer.ftl">-->
            <ul class="nav nav-list bs-docs-sidenav nav-collapse collapse">
                <li>
                    <a href="${APP_PATH}/index"><i class="icon-chevron-right"></i> 返回首页</a>
                </li>
            </ul>
        <#--左边栏结束-->
        </div>
        <div class="span9" id="content">
            <hr>
            <div class="row-fluid">
                <div class="block">
                    <div class="navbar navbar-inner block-header">
                        <div class="muted pull-left">提示：如果是需要密码的网盘链接，请在名称处添加密码
                        </div>
                    <#--<div class="btn-group pull-right">-->
                    <#--<button id="continueBtn" class="btn btn-success btn-mini">继续添加</button>-->
                    <#--</div>-->
                    </div>
                    <div class="block-content collapse in">
                        <div class="span12">
                            <table class="table">
                                <thead>
                                <tr>
                                    <th>名称</th>
                                    <th>链接</th>
                                    <th>类型</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>
                                        <input type="text" id="resourceName" name="resourceName" style="width:200px">
                                    </td>
                                    <td>
                                        <input type="text" id="resourceUrl" name="resourceUrl" value="https://"
                                               style="width:400px">
                                    </td>
                                    <td>
                                    <#--<select class="span6 m-wrap" name="category" style="width:120px">-->
                                        <select class="span6 m-wrap" id="resourceType" name="resourceType"
                                                style="width:120px">
                                            <option value="0">其他</option>
                                            <option value="1">工作</option>
                                            <option value="2">工具</option>
                                            <option value="3">门户</option>
                                            <option value="4">社区论坛</option>
                                            <option value="5">学习进阶</option>
                                            <option value="6">常用</option>
                                            <option value="7">博客</option>
                                        </select>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                            <div class="btn-group pull-right">
                                <button onclick="toAddResouces()" class="btn btn-success">提交</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /block -->
            </div>
        </div>

    </div>
    <footer>
        <p>&copy; Vincent Gabriel 2013 - More Templates <a href="http://www.cssmoban.com/" target="_blank"
                                                           title="cssmoban">cssmoban</a>
    </footer>
</div>

<!--/.fluid-container-->

<script src="${APP_PATH}/vendors/jquery-1.9.1.js"></script>
<script src="${APP_PATH}/bootstrap/js/bootstrap.min.js"></script>
<script src="${APP_PATH}/vendors/datatables/js/jquery.dataTables.min.js"></script>


<script src="${APP_PATH}/assets/scripts.js"></script>
<script src="${APP_PATH}/assets/DT_bootstrap.js"></script>
<script src="${APP_PATH}/layer/layer.js"></script>
</body>
</html>
<script>
    function toAddResouces() {
        var name = $("#resourceName").val();
        var url = $("#resourceUrl").val();
        var resourcetype = $("#resourceType").val();
        $.ajax({
            type: "post",
            url: "${APP_PATH}/user/doAddResources",
            data: {
                name: name,
                url: url,
                resourcetype: resourcetype,
                contributorid: "0"
            },
            success: function (result) {
                if (result.success) {
                    layer.msg("提交成功，请等待审核", {time: 1000, icon: 6});
                    setTimeout("window.location.href='${APP_PATH}/user/toGuestAddResource'", 1000);
                <#--window.location.href="${APP_PATH}/user/userInfo"-->
                } else {
                    layer.msg("提交失败", {time: 2000, icon: 5, shift: 6});
                }
            }
        })
    }
</script>