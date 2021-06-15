<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html class="loginHtml">
<head>
    <meta charset="utf-8">
    <title>用户登录</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="icon" href="${ctx}/resources/favicon.ico">
    <link rel="stylesheet" href="${ctx}/resources/layui/css/layui.css" media="all"/>
    <link rel="stylesheet" href="${ctx}/resources/css/public.css" media="all"/>
</head>
<body class="loginBody">
<form class="layui-form" id="registerFrm" style="height: auto">
    <div class="login_face" id="notice"><img src="${ctx}/resources/images/registered.png" class="userAvatar"></div>

    <div class="layui-form-item input-item">
        <label for="registerName">用户姓名</label>
        <input type="text" placeholder="请输入用户姓名" autocomplete="off" name="userName" id="userName"
               class="layui-input"
               lay-verify="required">
    </div>

    <div class="layui-form-item input-item">
        <label for="registerName">登录名</label>
        <input type="text" placeholder="请输入登录名" autocomplete="off" name="registerName" id="registerName"
               class="layui-input"
               lay-verify="required">
    </div>
    <div class="layui-form-item input-item">
        <label for="password">密码</label>
        <input type="password" placeholder="请输入密码" autocomplete="off" name="pwd" id="password"
               class="layui-input"
               lay-verify="required">
    </div>
    <div class="layui-form-item input-item">
        <label for="confirm">确认密码</label>
        <input type="password" placeholder="请确认密码" autocomplete="off" name="confirm" id="confirm"
               class="layui-input"
               lay-verify="required">
    </div>
    <div class="layui-form-item input-item" id="imgCode">
        <label for="verifyCode">验证码</label>
        <input type="text" placeholder="请输入验证码" name="verifyCode" autocomplete="off" id="verifyCode"
               lay-verify="required" class="layui-input" style="width: 110px; ">
        <img src="${ctx}/verify/getGifCode">
    </div>

    <div class="layui-form-item"  style="text-align: center;margin-top: 10px">
        <button class="layui-btn" id="register" lay-filter="register" lay-submit>注册</button>
        <button class="layui-btn" id="back" lay-filter="back" lay-submit>返回</button>
    </div>
</form>
<script type="text/javascript" src="${ctx}/resources/layui/layui.js"></script>
<script type="text/javascript">

    if (top != self) {
        parent.location.href = '/user/toRegister.page';
    }

    layui.use(['form', 'layer', 'jquery'], function () {

        var theConf = false;
        var thePwd = false;
        var theName = false;
        var theRegName = false;


        var form = layui.form,
            layer = parent.layer === undefined ? layui.layer : top.layer
        $ = layui.jquery;

        /**
         * 点击验证码加载新的验证码
         */
        $('#imgCode').on('click', 'img', function () {
            /** 动态验证码，改变地址 **/
            var i = new Image();
            i.src = '${ctx}/verify/getGifCode?' + Math.random();
            $(i).replaceAll(this);
        });


        //登录按钮
        form.on("submit(register)", function (data) {


            // var data = $('#registerFrm').serialize();

            var registerName = $('#registerName').val().trim();
            var userName = $('#userName').val().trim();
            var pwd = $('#password').val().trim();
            var confirm = $('#confirm').val().trim();
            var verifyCode = $('#verifyCode').val().trim();


            var data = {"loginname": registerName, "pwd": pwd, "name": userName, "verifyCode": verifyCode};

            if (registerName.length >= 3) {
                theRegName = true;
            } else {
                theRegName = false;
                layer.tips('登录名长度要大于3位', '#registerName', {
                    tips: [2, '#ff4c4d'],
                    time: 1000
                });

            }
            if (userName.length >= 1) {
                theName = true;
            } else {
                theName = false;
                layer.tips('用户名长度要大于1位', '#userName', {
                    tips: [2, '#ff4c4d'],
                    time: 1000
                });

            }


            if (pwd.length >= 6) {
                thePwd = true;

                if (pwd === confirm) {
                    theConf = true;

                } else {
                    theConf = false;
                    layer.tips('两次密码必须相同', '#confirm', {
                        tips: [2, '#ff4c4d'],
                        time: 1000
                    });
                }

            } else {
                theConf = false;
                layer.tips('密码长度必须大于6', '#password', {
                    tips: [2, '#ff4c4d'],
                    time: 1000
                });

            }
            console.log(thePwd + "---" + theConf)


            if (theRegName && theName && theConf && thePwd) {

                $('#register').text("注册中...").attr("disabled", "disabled").addClass("layui-disabled");
                layer.load(0, {shade: 0.5, time: false});
                $.post(
                    '${ctx}/user/register.json',
                    data,
                    function (result) {
                        if (result.code == 0) {
                            setTimeout(function () {
                                layer.closeAll('loading');
                                $('#register').text("注册").attr("disabled", false).removeClass("layui-disabled");
                                layer.msg(result.msg, {icon: 1, time: 1000}, function () {
                                    //登录成功,跳转到首页
                                    location.href = '${ctx}/login/toLogin.page';
                                });
                            }, 1200);
                        } else {
                            if (result.code == 4) {
                                layer.closeAll('loading');
                                $('#register').text("注册").attr("disabled", false).removeClass("layui-disabled");
                                layer.tips(result.msg, '#imgCode', {
                                    tips: [2, '#ff4c4d'],
                                    time: 2000
                                });
                            } else {
                                layer.closeAll('loading');
                                $('#register').text("注册").attr("disabled", false).removeClass("layui-disabled");
                                layer.msg(result.msg, {icon: 5, time: 2000});
                            }
                        }
                    }
                );
            }
            return false;
        });

        $('#back').click(function () {
            location.href = '${ctx}/login/toLogin.page';
        });


        //表单输入效果
        $(".loginBody .input-item").click(function (e) {
            e.stopPropagation();
            $(this).addClass("layui-input-focus").find(".layui-input").focus();
        })
        $(".loginBody .layui-form-item .layui-input").focus(function () {
            $(this).parent().addClass("layui-input-focus");
        })
        $(".loginBody .layui-form-item .layui-input").blur(function () {
            $(this).parent().removeClass("layui-input-focus");
            if ($(this).val() != '') {
                $(this).parent().addClass("layui-input-active");
            } else {
                $(this).parent().removeClass("layui-input-active");
            }
        });
    });
</script>
</body>
</html>