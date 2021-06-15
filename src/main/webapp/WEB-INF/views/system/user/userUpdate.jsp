<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>修改用户</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" href="${ctx}/resources/layui/css/layui.css" media="all"/>
    <link rel="stylesheet" href="${ctx}/resources/css/public.css" media="all"/>
    <link rel="stylesheet" href="${ctx}/resources/zTree/css/metroStyle/metroStyle.css" type="text/css">
    <link rel="stylesheet" type="text/css" href="${ctx}/resources/plugin/css/index.css">
</head>
<body class="childrenBody">
<form class="layui-form" id="userFrm">
    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">用户姓名</label>
            <div class="layui-input-inline">
                <input type="text" name="name" id="name" value="${user.name}" placeholder="用户姓名" autocomplete="off"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">登录名</label>
            <div class="layui-input-inline">
                <input type="text" name="loginname" id="loginname" value="${user.loginname}" placeholder="登录名"
                       autocomplete="off"
                       class="layui-input">
            </div>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">用户地址</label>
        <div class="layui-input-block">
            <input type="text" name="address" value="${user.address}" placeholder="公司地址" autocomplete="off"
                   class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">用户备注</label>
        <div class="layui-input-block">
            <textarea type="text" name="remark" placeholder="请输入用户备注信息" autocomplete="off"
                      class="layui-textarea">${user.remark}</textarea>
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">用户性别</label>
            <div class="layui-input-block">
                <input type="radio" name="sex" autocomplete="off" title="男" value="1"
                ${user.sex == 1 ? 'checked' : ''} class="layui-input">
                <input type="radio" name="sex" autocomplete="off" title="女" value="0"
                ${user.sex == 0 ? 'checked' : ''} class="layui-input">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">是否可用</label>
            <div class="layui-input-block">
                <input type="radio" name="available" autocomplete="off" title="是" value="1"
                ${user.available == 1 ? 'checked' : ''} class="layui-input">
                <input type="radio" name="available" autocomplete="off" title="否" value="0"
                ${user.available == 0 ? 'checked' : ''} class="layui-input">
            </div>
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">入职时间</label>
            <div class="layui-input-inline">
                <input type="text" name="hiredate" id="hiredate"
                       value="<fmt:formatDate value="${user.hiredate}" pattern="yyyy-MM-dd"/>" readonly="readonly"
                       placeholder="入职时间"
                       autocomplete="off" class="layui-input">
            </div>
        </div>
    </div>
    <div class="layui-form-item" style="text-align: center;">
        <button class="layui-btn" lay-submit="" lay-filter="updateUser">提交</button>
        <button class="layui-btn layui-btn-warm" type="reset">重置</button>
    </div>
</form>
<script type="text/javascript" src="${ctx}/resources/layui/layui.js"></script>
<script type="text/javascript" src="${ctx}/resources/zTree/js/jquery-1.4.4.min.js"></script>
<script type="text/javascript" src="${ctx}/resources/zTree/js/jquery.ztree.core.js"></script>
<script type="text/javascript" src="${ctx}/resources/plugin/js/selectTree.js"></script>
<script type="text/javascript">
    var form;
    var layer;
    layui.use(['form', 'layer', 'jquery', 'laydate'], function () {
        form = layui.form;
        var laydate = layui.laydate;
        var $ = layui.jquery;
        //如果父页面有layer就是用父页面的，没有就导入
        layer = parent.layer === undefined ? layui.layer : parent.layer;

        //绑定时间选择器
        laydate.render({
            elem: '#hiredate'
        });

        //监听提交，使用layui form submit事件
        form.on('submit(updateUser)', function () {
            //form获取数据
            var data = $('#userFrm').serialize();
            data = data + "&id=" + getQueryVariable("id")

            $.post(
                '${ctx}/user/updateUser.json',
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
                        layer.msg(data.msg, {icon: 2, time: 3000});
                    }
                }
            );
            return false;
        });

        /**
         * 监听用户姓名失去焦点事件，请求后台自动生成对应的全拼拼音
         */
        $('#name').on('blur', function () {
            //拿到用户姓名
            var name = $(this).val();
            $.post(
                '${ctx}/user/autoGenerateLoginName.json',
                {"name": name},
                function (result) {
                    $('#loginname').val(result.loginName);
                }
            );
        });


        /**
         * 获取url中的参数
         * @param variable
         * @returns {string|boolean}
         */
        function getQueryVariable(variable) {
            var query = window.location.search.substring(1);
            var vars = query.split("&");
            for (var i = 0; i < vars.length; i++) {
                var pair = vars[i].split("=");
                if (pair[0] == variable) {
                    return pair[1];
                }
            }
            return (false);
        }


    });

</script>
</body>
</html>
