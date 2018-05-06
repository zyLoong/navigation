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
        <#include "${APP_PATH}/leftContainer.ftl">
        </div>

        <!--/span-->
        <div class="span9" id="content">
            <div class="row-fluid">
                <!-- block -->
                <div class="block">
                    <div class="navbar navbar-inner block-header">
                        <div class="muted pull-left">Bootstrap dataTables</div>
                    </div>
                    <div class="block-content collapse in">
                        <div class="span12">

                            <table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered"
                                   id="example">
                                <thead>
                                <tr>
                                    <th>用户id</th>
                                    <th>用户名</th>
                                    <th>邮箱</th>
                                    <th>注册时间</th>
                                    <th>积分</th>
                                    <th>操作</th>
                                </tr>
                                </thead>
                                <tbody>
                                <#list Request.userList as user>
                                <tr class="odd gradeX">
                                    <td>${user.id}</td>
                                    <td>${user.username}</td>
                                    <td>${user.email}</td>
                                    <td class="center">${user.createtime}</td>
                                    <td class="center">${user.points}</td>
                                    <td>
                                        <button class="btn"><i class="icon-eye-open"></i></button>
                                    </td>
                                </tr>
                                </#list>
                                </tbody>

                            </table>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <hr>
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
<script>
    $(function () {

    });
</script>
</body>

</html>