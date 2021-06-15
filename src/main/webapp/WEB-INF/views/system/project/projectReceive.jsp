<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>角色管理</title>
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
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 5px;">
    <legend>管理以接收的项目</legend>
</fieldset>

<!-- 数据表格开始-->
<table id="roleList" lay-filter="roleList"></table>

<!--表格头工具条-->
<script type="text/html" id="tableToolBar">

    <a class="layui-btn layui-btn-danger" lay-event="batchDel">批量删除</a>

</script>
<!-- 表格数据工具条 -->
<script type="text/html" id="roleListBar">
    <a class="layui-btn layui-btn-xs" lay-event="complete">完成</a>
    <a class="layui-btn layui-btn-xs layui-btn-danger" lay-event="del">删除</a>
</script>
<!-- 数据表格结束-->
<script type="text/javascript" src="${ctx}/resources/layui/layui.js"></script>
<script type="text/javascript" src="${ctx}/resources/zTree/js/jquery-1.4.4.min.js"></script>
<script type="text/javascript">
    var tableIns;

    /**
     * 查询角色重载表格
     */
    function reloadTable() {
        tableIns.reload({
            where: {
                name: $("#name").val(),
                remark: $("#remark").val()
            }
            , page: {
                curr: 1
            }
        });
    }

    /**
     * 表单渲染
     */
    layui.use(['form', 'layer', 'laydate', 'table', 'laytpl'], function () {
        var form = layui.form,
            layer = parent.layer === undefined ? layui.layer : parent.layer,
            $ = layui.jquery,
            laydate = layui.laydate,
            laytpl = layui.laytpl,
            table = layui.table;
        //我发的项目
        tableIns = table.render({
            elem: '#roleList',
            url: '${ctx}/project/loadReceiveProject.json',
            cellMinWidth: 95,
            toolbar: '#tableToolBar',
            page: true,
            height: "full-180",
            limit: 10,
            limits: [10, 15, 20, 25],
            // defaultToolbar: ['filter','print','exports'],
            id: "roleListTable",
            cols: [[
                {type: "checkbox", fixed: "left", width: 50},
                {field: 'id', title: '项目ID', width: 180, align: "center"},
                {
                    field: 'state', title: '项目状态', width: 220, align: 'center', templet: function (data) {

                        var theField = "";
                        switch (data.state) {
                            case 1:
                                theField = "<font color=blue>未审核</font>";
                                break;
                            case 2:
                                theField = "<font color=#00008b>已审核</font>";
                                break;
                            case 3:
                                theField = "<font color=#9acd32>已被接单</font>";
                                break;
                            case 4:
                                theField = "<font color=green>已完成</font>";
                                break;
                            case 5:
                                theField = "<font color=red>项目暂停</font>";
                                break;
                            case 6:
                                theField = "<font color=red>项目撤销</font>";
                                break;
                            case 7:
                                theField = "<font color=red>审核不通过</font>";
                                break;

                        }

                        return theField;
                    }
                },
                {field: 'title', title: '项目名称', align: "center"},
                {field: 'sendname', title: '发包人', align: "center"},
                {field: 'receivename', title: '收包人', align: "center"},


                {
                    title: '操作', width: 250, templet: function (data) {

                        var text = "";
                        if (data.state === 5 || data.state === 6) {
                            text = "<font color=red>目前不可操作</font>";

                        } else {
                            text = "<a class='layui-btn layui-btn-xs' lay-event='complete'>完成" +
                                "</a> <a class='layui-btn layui-btn-xs layui-btn-danger' lay-event='del'>删除</a>"
                        }

                        return text;
                    }, fixed: "right", align: "center"
                }
            ]]
            /**
             * 设置当删除表格数据时候，删除最后一条跳转上一页
             * 如果是异步请求数据方式，res即为你接口返回的信息。
             * 如果是直接赋值的方式，res即为：{data: [], count: 99} data为当前页数据、count为数据总长度
             */
            , done: function (res, curr) {
                var currPage = curr; // 获得当前页码
                var dataLength = res.data.length; // 获得当前页的记录数
                var count = res.count; // 获得总记录数

                console.log('currPage: ', curr);
                console.log('dataLength: ', dataLength);
                console.log('count: ', count);

                if (dataLength == 0 && count != 0) { //如果当前页的记录数为0并且总记录数不为0
                    table.reload("roleListTable", { // 刷新表格到上一页
                        page: {
                            curr: currPage - 1
                        }
                    });
                }
            }
        });

        /**
         * 点击查询按钮
         */
        $(".search_btn").on("click", function () {
            reloadTable();
        });

        /**
         * 监听表头工具栏，批量删除和添加
         */
        table.on('toolbar(roleList)', function (obj) {
            switch (obj.event) {
                case 'add':
                    toAddProject();
                    break;
                case 'batchDel':
                    //roleListTable table的id
                    var checkStatus = table.checkStatus('roleListTable'),
                        //获取选中的数据
                        data = checkStatus.data;
                    // layer.alert(JSON.stringify(data));
                    // var ids = "?a=1";

                    console.log(JSON.stringify(data));

                    var ids = new Array();
                    if (data.length > 0) {
                        for (var i in data) {
                            // ids += "&ids=" + data[i].id;
                            ids[i] = data[i].id;
                        }

                        // layer.alert(JSON.stringify(ids));
                        console.log(ids);
                        layer.confirm('确定要删除选中的项目吗？', {icon: 3, title: '提示信息'}, function (index) {
                            $.post("${ctx}/project/batchDeleteProject.json",
                                {"ids": ids + ""},
                                function (data) {
                                    if (data.code == 0) {
                                        layer.msg(data.msg, {icon: 1, time: 2000}, function () {
                                            //重新刷新表格
                                            tableIns.reload();
                                            //重新加载左边的角色树
                                            parent.left.initTree();
                                            //关闭提示窗口
                                            layer.close(index);
                                        });
                                    } else {
                                        layer.msg(data.msg, {icon: 2, time: 2000});
                                    }
                                });
                        });
                    } else {
                        layer.msg("请选择需要删除的项目", {icon: 5, time: 2000});
                    }
                    break;
            }
            ;
        });

        /**
         * 添加项目
         */
        function toAddProject() {
            //打开弹出层
            var index = layui.layer.open({
                title: "发布项目",
                type: 2,
                area: ['1000px', '800px'],
                content: "${ctx}/project/toProjectAdd.page",
                success: function (layero, index) {
                    var body = layui.layer.getChildFrame('body', index);
                    setTimeout(function () {
                        layui.layer.tips('点击此处返回项目列表', '.layui-layer-setwin .layui-layer-close', {
                            tips: 3
                        });
                    }, 200);
                }
            });
            //默认所在文档中最大化窗口
            // layui.layer.full(index);
            //改变窗口大小时，重置弹窗的宽高，防止超出可视区域（如F12调出debug的操作）
            $(window).on("resize", function () {
                layui.layer.full(index);
            });
        }

        /**
         * 表格行工具条监听，删除和修改
         */
        table.on('tool(roleList)', function (obj) {
            //获取事件类型，由工具条中的 lay-event="..."定义
            var layEvent = obj.event,
                //当前行的所有数据
                data = obj.data;
            if (layEvent === 'complete') {
                toComplete(data.id);//取出项目ID
            } else if (layEvent === 'del') { //删除
                layer.confirm('确定删除[' + data.title + ']项目吗？', {icon: 3, title: '提示信息'}, function (index) {
                    $.post(
                        "${ctx}/project/deleteProject.json", //url
                        {"id": data.id}, //需要删除的角色ID
                        function (data) {
                            if (data.code == 0) {
                                //成功提示
                                layer.msg(data.msg, {icon: 1, time: 2000}, function () {
                                    //刷新table
                                    tableIns.reload();
                                    //关闭confirm
                                    layer.close(index);
                                });
                            } else {
                                //失败
                                layer.msg(data.msg, {icon: 2, time: 2000});
                            }
                        }
                    );
                });
            } else if (layEvent === 'assignPermission') {
                assignPermission(data.id);
            }
        });

        /**
         * 弹出修改角色信息的iframe层
         */
        function toComplete(id) {
            //打开弹出层
            var index = layui.layer.open({
                title: "完成项目",
                type: 2,
                area: ['1000px', '600px'],
                //这里的content 是 url
                content: "${ctx}/project/toProjectComplete.page?id=" + id,
                success: function (layero, index) {
                    var body = layui.layer.getChildFrame('body', index);
                    //tip提示：如何关闭iframe层
                    setTimeout(function () {
                        layui.layer.tips('点击此处返回角色列表', '.layui-layer-setwin .layui-layer-close', {
                            tips: [3, '#FFB800'],
                            time: 2000
                        });
                    }, 500)
                }
            });
            //默认最大化窗口
            //layui.layer.full(index);
            //改变窗口大小时，重置弹窗的宽高，防止超出可视区域（如F12调出debug的操作）
            $(window).on("resize", function () {
                layui.layer.full(index);
            });
        }
    });
</script>
</body>
</html>