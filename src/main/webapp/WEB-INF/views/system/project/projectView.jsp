<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>发布项目</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" href="${ctx}/resources/layui/css/layui.css" media="all"/>
    <link rel="stylesheet" href="${ctx}/resources/css/public.css" media="all"/>
</head>
<body class="childrenBody">
<form class="layui-form" id="roleFrm">

    <input type="hidden" value="${project.id}" id="theid">
    <div class="layui-form-item">
        <label class="layui-form-label">项目名称</label>
        <div class="layui-input-block">
            <input type="text" name="title" value="${project.title}" placeholder="项目名称" disabled lay-verify="required"
                   autocomplete="off"
                   class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">项目简介</label>
        <div class="layui-input-block">
            <textarea type="text" name="introduction" disabled placeholder="项目简介" autocomplete="off"
                      class="layui-textarea">${project.introduction}</textarea>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">项目备注</label>
        <div class="layui-input-block">
            <textarea type="text" name="remark" disabled placeholder="项目备注" autocomplete="off"
                      class="layui-textarea">${project.remark}</textarea>
        </div>
    </div>

    <table class="layui-hide" id="fileList" lay-filter="fileList"></table>

    <div class="layui-form-item" style="text-align: center; margin-top: 20px">
        <button class="layui-btn" lay-submit="" lay-filter="sendProject" id="receive">接包</button>
    </div>
</form>


<script type="text/html" id="downBar">
    <a class="layui-btn layui-btn-xs" lay-event="download">下载</a>
</script>
<script type="text/javascript" src="${ctx}/resources/layui/layui.js"></script>
<script type="text/javascript">
    var fileTable;
    layui.use(['table', 'layer', 'jquery',], function () {
        var form = layui.form;
        var $ = layui.jquery;
        var table = layui.table;
        //如果父页面有layer就是用父页面的，没有就导入
        var layer = parent.layer === undefined ? layui.layer : parent.layer;

        fileTable = table.render({
            elem: '#fileList'
            , url: '${ctx}/file/findFileByProjectID.json?id=' + $('#theid').val()
            , cellMinWidth: 80
            , cols: [[
                {field: 'id', width: 80, title: 'ID', sort: true, align: "center"},
                {field: 'path', width: '70%', title: '路径', align: "center"},
                {title: '下载', templet: '#downBar', fixed: "right", align: "center"}
            ]]
        });

        table.on('tool(fileList)', function (obj) {
            var layEvent = obj.event, data = obj.data;


            if (layEvent === 'download') {
                // console.log(data.path);
                // 获取XMLHttpRequest

                var name = data.path.split('\\');

                download(name[name.length - 1]);
            }


        });

        function downloadFile(content, filename) {
            var a = document.createElement('a')
            var blob = new Blob([content])
            var url = window.URL.createObjectURL(blob)
            a.href = url
            a.download = filename
            a.click()
            window.URL.revokeObjectURL(url)
        }

        function download(data) {
            var url = '${ctx}/file/downloadFile?type=file&filePath=' + data; // demo图片
            ajax(url, function (xhr) {
                var filename = 'xxx.' + url.replace(/(.*\.)/, '') // 自定义文件名+后缀
                downloadFile(xhr.response, filename)
            }, {
                responseType: 'blob'
            })
        }

        function ajax(url, callback, options) {
            window.URL = window.URL || window.webkitURL
            var xhr = new XMLHttpRequest()
            xhr.open('get', url, true)
            if (options.responseType) {
                xhr.responseType = options.responseType
            }
            xhr.onreadystatechange = function () {
                if (xhr.readyState === 4 && xhr.status === 200) {
                    callback(xhr)
                }
            }
            xhr.send()
        }


        $('#receive').click(function () {

            $('#receive').attr('disabled', "true");

            var proid = {
                "id": $('#theid').val()
            };


            layer.msg("接包中...", {icon: 1, time: 2000}, function () {

                $.post(
                    '${ctx}/project/receiveProject.json',
                    proid,
                    function (data) {
                        if (data.code == 0) {


                            $("#receive").hide(); //隐藏

                            //弹出成功的提示
                            layer.msg(data.msg, {icon: 1, time: 1000});
                            //重载表格
                            parent.tableIns.reload();
                            //关闭窗口
                            var index = layer.getFrameIndex(window.name);
                            layer.close(index);
                        } else {
                            $("#receive").show(); //显示

                            $('#receive').removeAttr("disabled");

                            layer.msg(data.msg, {icon: 2, time: 2000});
                        }
                    }
                );

            });


        });


    });
</script>
</body>
</html>
