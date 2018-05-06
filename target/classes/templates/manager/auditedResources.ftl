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
                                    <th>ID</th>
                                    <th>资源名</th>
                                    <th>链接</th>
                                    <th>类型</th>
                                    <th>贡献者ID</th>
                                    <th>操作</th>
                                </tr>
                                </thead>
                                <tbody>
                                <#list Request.resourceList as resource>
                                <tr id="${resource.id}" class="odd gradeX">
                                    <td class="resourceId">${resource.id}</td>
                                    <td class="resourceName">${resource.name}</td>
                                    <td>
                                        <input class="resourceUrl" type="text" value="${resource.url}">
                                        <a target="_blank" href="${resource.url}">GO</a>
                                    </td>

                                <#--类型下拉列表-->
                                    <td>
                                        <select class="resourceType" class="span6 m-wrap" name="resourceType"
                                                style="width:120px">
                                            <#if resource.resourcetype=='0'>
                                                <option value="0" selected>其他</option>
                                            <#else >
                                                <option value="0">其他</option>
                                            </#if>
                                            <#if resource.resourcetype=='1'>
                                                <option value="1" selected>工作</option>

                                            <#else >
                                                <option value="1">工作</option>
                                            </#if>
                                            <#if resource.resourcetype=='2'>
                                                <option value="2" selected>工具</option>

                                            <#else >
                                                <option value="2">工具</option>
                                            </#if>
                                            <#if resource.resourcetype=='3'>
                                                <option value="3" selected>门户</option>

                                            <#else >
                                                <option value="3">门户</option>
                                            </#if>
                                            <#if resource.resourcetype=='4'>
                                                <option value="4" selected>社区论坛</option>

                                            <#else >
                                                <option value="4">社区论坛</option>
                                            </#if>
                                            <#if resource.resourcetype=='5'>
                                                <option value="5" selected>学习进阶</option>

                                            <#else >
                                                <option value="5">学习进阶</option>
                                            </#if>
                                            <#if resource.resourcetype=='6'>
                                                <option value="6" selected>常用</option>
                                            <#else >
                                                <option value="6">常用</option>
                                            </#if>
                                            <#if resource.resourcetype=='7'>
                                                <option value="7" selected>博客</option>

                                            <#else >
                                                <option value="7">博客</option>
                                            </#if>

                                        </select>
                                    </td>
                                    <td class="resourceConId" width="70px" class="center">${resource.contributorid}</td>

                                <#--通过/拒绝单选按钮-->
                                    <td class="resourceRadion" width="90px">
                                        <label>
                                            <input type="radio" name="${resource.url}" value="1"
                                                   checked>通过
                                        </label>
                                        <label>
                                            <input type="radio" name="${resource.url}" value="0">拒绝
                                        </label>
                                    </td>

                                </tr>

                                </#list>
                                </tbody>
                            </table>
                            <div class="btn-group pull-right">
                                <button onclick="submit()" class="btn btn-success btn-large">提交</button>
                            </div>
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

    <#--function submit() {-->
        <#--var jsonObj = {};-->
        <#--jsonObj["userList[0].id"] = "1";-->
        <#--jsonObj["userList[0].username"] = "zhangsan";-->
        <#--$.ajax({-->
            <#--type: "post",-->
            <#--url: "${APP_PATH}/manager/auditedResources",-->
            <#--data: jsonObj,-->
            <#--success: function () {-->

            <#--}-->
        <#--});-->
    <#--}-->

    function submit() {
//        设置一个JSON数组来保存页面上的资源列表
        var jsonObj = {};
//        设置ID值
        $.each($(".resourceId"), function (i, e) {
//            var id =$(e).text();
            jsonObj["resourceList[" + i + "].id"] = $(e).text();
        });
//        设置name值
        $.each($(".resourceName"), function (i, e) {
//            var id =$(e).text();
            jsonObj["resourceList[" + i + "].name"] = $(e).text();
        });
//        设置url值
        $.each($(".resourceUrl"), function (i, e) {
//            var id =$(e).text();
            jsonObj["resourceList[" + i + "].url"] = $(e).val();
        });
//        设置资源类型
        $.each($(".resourceType"), function (i, e) {
//            var id =$(e).text();
            jsonObj["resourceList[" + i + "].resourcetype"] = $(e).val();
        });
//        设置贡献者id
        $.each($(".resourceConId"), function (i, e) {
//            var id =$(e).text();
            jsonObj["resourceList[" + i + "].contributorid"] = $(e).text();
        });
//        设置审核是否通过
        $.each($(".resourceRadion :checked"), function (i, e) {
            jsonObj["resourceList[" + i + "].status"] = $(e).val();
        });

        $.ajax({
            type: "post",
            url: "${APP_PATH}/manager/auditedResources",
            data: jsonObj
        });
    }
</script>
</body>

</html>