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
                        <div class="muted pull-left">我的收藏</div>
                    </div>
                    <div class="block-content collapse in">
                        <div class="span12">
                            <table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered"
                                   id="example2">
                                <thead>
                                <tr>
                                    <th>名称</th>
                                    <th>类型</th>
                                    <th>提交时间</th>
                                    <th>点击量</th>
                                </tr>
                                </thead>
                                <tbody>
                                <#list Request.collectionResources as resource>
                                <tr class="odd gradeX">
                                    <td>
                                        <a onclick="clickUrl(${resource.id})" href="${resource.url}">${resource.name}</a>

                                    </td>
                                    <td>${resource.resourcetype}</td>
                                    <td>${resource.createtime}</td>
                                    <td>${resource.frequency}</td>
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
<script>
    $(function () {

    });

    <#--//  页面加载后异步加载用户所提交过的所有资源-->
    <#--$.ajax({-->
    <#--type: "post",-->
    <#--url: '${APP_PATH}/user/getResourcesByUsername',-->
    <#--data: {-->
    <#--contributorid: "${Session.loginUser.id}"-->
    <#--},-->
    <#--success: function (result) {-->
    <#--if (result.success) {-->
    <#--var content = '';-->
    <#--$.each(result.data, function (i, e) {-->


    <#--content = content + '<tr class="odd gradeX">'-->
    <#--//                            <a onclick="toUrl('www.baidu.com')">baidu</a>-->
    <#--//                    content = content + '    <td> <a href="#" onclick="toUrl(\''+e.url+'\')">' + e.name + '</a></td>'-->
    <#--content = content + '    <td> <a  onclick="clickUrl(\'' + e.id + '\')"                 id="' + e.id + '"  class="resourceUrl"  target="_blank"  href="' + e.url + '" >' + e.name + '</a></td>'-->
    <#--content = content + '    <td>' + e.resourcetype + '</td>'-->
    <#--content = content + '    <td class="center">' + e.createtime + '</td>'-->
    <#--content = content + '    <td class="center">' + e.frequency + '</td>'-->
    <#--content = content + '</tr>'-->
    <#--});-->
    <#--$("tbody").html(content);-->

    <#--} else {-->
    <#--//                alert(result.message)-->
    <#--}-->
    <#--}-->

    <#--});-->

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