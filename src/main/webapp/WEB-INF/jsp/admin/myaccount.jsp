<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/12/18
  Time: 15:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%String path = request.getContextPath();%>
<html>
<head>
    <title>我的账户</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
    <link rel="stylesheet" href="<%=path%>/resources/admin/css/typo.css" >
    <link rel="stylesheet" href="<%=path%>/resources/admin/css/animate.css">
    <link rel="stylesheet" href="<%=path%>/resources/admin/lib/prism/prism.css">
    <link rel="stylesheet" href="<%=path%>/resources/admin/lib/tocbot/tocbot.css" >
    <link rel="stylesheet" href="<%=path%>/resources/admin/css/me.css" >
</head>
<body>
<h1 align="center">修改账户信息</h1>
<div class="m-container-small m-padded-tb-massive" style="max-width: 30em!important;">
    <div class="ui container">
        <div class="ui middle aligned center aligned grid">
            <div class="column">
                <h2 class="ui teal image header">
                    <!--<img src="../../static/images/logo.png" class="image">-->
                </h2>
                <form class="ui large form" method="post" id="login-form" action="<%=path%>/admin/updateuser">
                    <div class="ui stacked segment">
                        <div class="required field">
                            <h5>您的用户名</h5>
                            <div class="ui left icon input">
                                <i class="user icon"></i>
                                <input type="text" name="username" id="username-input" value="${sessionScope.user.username}" readonly>
                            </div>
                        </div>
                        <div class="required field">
                            <h5>昵称</h5>
                            <div class="ui left icon input">
                                <i class="header icon"></i>
                                <input type="text" name="nickname" id="nickname-input" value="${sessionScope.user.nickname}">
                            </div>
                        </div>
                        <div class="field">
                            <h5>新密码</h5>
                            <div class="ui left icon input">
                                <i class="lock icon"></i>
                                <input type="password" name="password" id="password-input" placeholder="新的密码">
                            </div>
                        </div>
                        <div class="field">
                            <h5>确认密码</h5>
                            <div class="ui left icon input">
                                <i class="lock icon"></i>
                                <input type="password" name="passwordcheck" id="passwordcheck" placeholder="确认密码">
                            </div>
                        </div>
                        <div class="field">
                            <h5>邮箱</h5>
                            <div class="ui left icon input">
                                <i class="lock icon"></i>
                                <input type="text" name="email" id="email" value="${sessionScope.user.email}">
                            </div>
                        </div>
                        <div class="ui fluid large teal submit button" id="modify">确认修改</div>
                    </br>
                        <div class="ui fluid large btn-block  button" id="return">返回</div>
                    </div>
                    <div class="ui error message"></div>
                </form>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/jquery@3.2/dist/jquery.min.js"></script>
<!--引入semantic的js库-->
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
<script>
    $('.ui.form').form({
        fields:{
            username:{
                identifier: 'username',
                rules:[{
                    type:'empty',
                    prompt:'请输入用户名'
                }]
            },
            password:{
                identifier: 'password',
                rules:[{
                    type:'empty',
                    prompt:'请输入密码'
                }]
            },
            passwordcheck:{
                identifier: 'passwordcheck',
                rules:[{
                    type:'empty',
                    prompt:'请输入确认密码'
                }]
            },
            nickname:{
                identifier: 'nickname',
                rules:[{
                    type:'empty',
                    prompt:'请输入昵称'
                }]
            }
        }
    })

    $("#return").click(function () {
        window.location.href="<%=path%>/admin/"

    })
    $("#modify").click(function () {
        var password = $("#password-input").val();
        var password_check = $("#passwordcheck").val();
        if(password!=password_check){
            alert("两次密码输入不一致");
            window.location.href = '<%=path%>/admin/myaccount';
            return false;
        }
    })
</script>
</body>
</html>
