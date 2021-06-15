<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>修改角色</title>
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
    <div class="layui-form-item">
        <label class="layui-form-label">项目名称</label>
        <div class="layui-input-block">
            <input type="hidden" name="id" value="${project.id}">
            <input type="text" name="title" value="${project.title}" placeholder="项目名称" lay-verify="required"
                   autocomplete="off"
                   class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">项目简介</label>
        <div class="layui-input-block">
            <textarea type="text" name="introduction" placeholder="项目简介" autocomplete="off"
                      class="layui-textarea">${project.introduction}</textarea>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">项目备注</label>
        <div class="layui-input-block">
            <textarea type="text" name="remark" placeholder="项目备注" autocomplete="off"
                      class="layui-textarea">${project.remark}</textarea>
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">项目状态</label>
        <div class="layui-input-block">


            <c:if test="${project.state==5||project.state==6}">
                <input type="radio" name="state" autocomplete="off" title="继续" value="1" class="layui-input">
            </c:if>


            <c:if test="${project.state != 3}">
                <shiro:hasPermission name="project:state">
                    <input type="radio" name="state" autocomplete="off" title="通过" value="2"
                        ${project.state == 2 ? 'checked' : ''} class="layui-input">
                    <input type="radio" name="state" autocomplete="off" title="不通过" value="7"
                        ${project.state == 7 ? 'checked' : ''} class="layui-input">
                </shiro:hasPermission>

            </c:if>


            <input type="radio" name="state" autocomplete="off" title="暂停" value="5"
            ${project.state == 5 ? 'checked' : ''} class="layui-input">
            <input type="radio" name="state" autocomplete="off" title="撤销" value="6"
            ${project.state == 6 ? 'checked' : ''} class="layui-input">
        </div>
    </div>


    <div class="layui-form-item" style="text-align: center;">
        <button class="layui-btn" lay-submit="" lay-filter="updateRole">提交</button>
        <button class="layui-btn layui-btn-warm" type="reset">重置</button>
    </div>
</form>
<script type="text/javascript" src="${ctx}/resources/layui/layui.js"></script>
<script type="text/javascript">
    layui.use(['form', 'layer', 'jquery'], function () {
        var form = layui.form;
        var $ = layui.jquery;
        //如果父页面有layer就是用父页面的，没有就导入
        var layer = parent.layer === undefined ? layui.layer : parent.layer;

        //监听提交，使用layui form submit事件
        form.on('submit(updateRole)', function () {
            //form获取数据
            var data = $('#roleFrm').serialize();
            console.log(data);
            $.post(
                '${ctx}/project/updateProject.json',
                data,
                function (data) {
                    console.log(data);
                    if (data.code == 0) {
                        //弹出成功的提示
                        layer.msg(data.msg, {icon: 1, time: 2000});
                        //重载表格
                        parent.tableIns.reload();
                        //关闭窗口
                        var index = layer.getFrameIndex(window.name);
                        layer.close(index);
                    } else {
                        //弹出失败的提示
                        layer.msg(data.msg, {icon: 2, time: 2000});
                    }
                }
            );
            return false;
        });
    });
</script>
</body>
</html>
