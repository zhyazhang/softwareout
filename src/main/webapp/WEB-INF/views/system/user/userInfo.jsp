<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>个人资料</title>
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
<form class="layui-form layui-row" id="userInfoList">
    <div class="layui-col-md3 layui-col-xs12 user_right">
        <div class="layui-upload-list">
            <img src="${ctx}/file/downloadFile?type=head&filePath=${user.imgpath}"
                 class="layui-upload-img layui-circle userFaceBtn userAvatar" id="userFace">
        </div>
        <button type="button" class="layui-btn layui-btn-primary userFaceBtn"><i class="layui-icon">&#xe67c;</i>更换头像
        </button>
    </div>
    <div class="layui-col-md6 layui-col-xs12">

        <input hidden value="${theuser.currentUser.id}" name="id">
        <div class="layui-form-item">
            <label class="layui-form-label">用户名</label>
            <div class="layui-input-block">
                <input type="text" value="${theuser.currentUser.loginname}" disabled class="layui-input layui-disabled">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">用户组</label>
            <div class="layui-input-block">
                <input type="text" value="${theuser.roles.get(0)}" disabled class="layui-input layui-disabled">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">真实姓名</label>
            <div class="layui-input-block">
                <input type="text" value="${theuser.currentUser.name}" name="name" placeholder="请输入真实姓名"
                       lay-verify="required"
                       class="layui-input realName">
            </div>
        </div>
        <div class="layui-form-item" pane="">
            <label class="layui-form-label">性别</label>
            <div class="layui-input-block userSex">
                <input type="radio" name="sex"
                ${theuser.currentUser.sex == 1 ? 'checked' : ''} value="1" title="男">
                <input type="radio" name="sex"
                ${theuser.currentUser.sex == 0 ? 'checked' : ''} value="0" title="女">
                <input type="radio" name="sex"
                ${theuser.currentUser.sex == 2 ? 'checked' : ''} value="2" title="保密">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">地址</label>
            <div class="layui-input-block">
                <input type="tel" value="${theuser.currentUser.address}" name="address" placeholder="请输入地址"
                       lay-verify="address"
                       class="layui-input userPhone">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">个人简介</label>
            <div class="layui-input-block">
                <textarea placeholder="请输入内容" name="remark"
                          class="layui-textarea myself">${theuser.currentUser.remark}</textarea>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn" lay-submit="" lay-filter="changeUser">更新基本信息</button>
            </div>
        </div>
    </div>
</form>
<script type="text/javascript" src="${ctx}/resources/layui/layui.js"></script>
<script type="text/javascript">
    var form, $;
    layui.config({
        base: "${ctx}/resources/js/"
    }).extend({
        "address": "address"
    }).use(['form', 'layer', 'upload', 'laydate', "address"], function (exports) {
        form = layui.form;
        $ = layui.jquery;
        var layer = parent.layer === undefined ? layui.layer : top.layer,
            upload = layui.upload,
            laydate = layui.laydate;

        //上传头像
        upload.render({
            elem: '.userFaceBtn',
            acceptMime: 'image/*',
            url: '${ctx}/file/upload.json',
            method: "post",
            data: {"loginname": '${user.loginname}'},
            done: function (res, index, upload) {
                if (res.code == 0) {
                    if (res.data.msg && res.data.msg != '') {
                        //上传头像成功
                        layer.msg(res.data.msg);
                        //同步更新头像显示
                        parent.location.reload();

                    } else {
                        layer.msg("文件上传成功：" + res.data.src);
                    }
                }
                //更新头像显示
                $('#userFace').attr('src', res.data.src);
            }
        });
        //提交个人资料
        form.on("submit(changeUser)", function (data) {

            var data = $('#userInfoList').serialize();
            console.log(data);
            $.post(
                '${ctx}/user/updateUser.json',
                data,
                function (data) {
                    if (data.code == 0) {
                        //弹出成功的提示
                        layer.msg("信息更新成功，请重新登录", {icon: 1, time: 3000}, function () {
                            parent.location.href = '${ctx}/user/logout.page';
                        });
                    } else {
                        layer.msg(data.msg, {icon: 2, time: 3000});
                    }
                }
            );


            return false; //阻止表单跳转。如果需要表单跳转，去掉这段即可。
        });
    });
</script>
</body>
</html>
