<%@ page import="com.hrbeu.Interior.pojo.User" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/9/20
  Time: 11:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%String path=request.getContextPath();%>
<html lang="en" xmlns:th="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
    <!--设置移动端-->
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <title>后台管理</title>
    <!--引入css-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
    <link rel="stylesheet" href="<%=path%>/resources/admin/css/typo.css" >
    <link rel="stylesheet" href="<%=path%>/resources/admin/css/animate.css">
    <link rel="stylesheet" href="<%=path%>/resources/admin/lib/prism/prism.css">
    <link rel="stylesheet" href="<%=path%>/resources/admin/lib/tocbot/tocbot.css">
    <link rel="stylesheet" href="<%=path%>/resources/admin/css/me.css">
</head>

<body>
<!--导航栏容器-->
<nav class="ui inverted attached segment m-padded-tb-mini m-shadow-small" >
    <!--为了让logo更加靠右，因此将其放入container中-->
    <div class="ui container">
        <!--创建一个menu-->
        <div class="ui inverted secondary stackable menu">
            <!--创建一个logo-->
            <a href="#"><h2 class="ui teal header item" id="index-btn">Liujie's Lab后台管理</h2></a>
            <!--菜单栏-->
            <a href="#" class="m-item item m-mobile-hide"><i class="image icon"></i>首页轮播图管理</a>
            <a href="#" class="m-item item m-mobile-hide"><i class="idea icon"></i>文档管理</a>
            <a href="#" class="m-item item m-mobile-hide"><i class="user icon"></i>用户管理</a>
            <a href="#" class="m-item item m-mobile-hide"><i class="warehouse icon"></i>案列管理</a>
            <a href="#" class="m-item item m-mobile-hide"><i class="setting icon"></i>关于我们管理</a>
            <!--头像-->
            <div class="right m-item m-mobile-hide menu">
                <div class="ui dropdown item">
                    <div class="text">
                        <img src="#" >
                        aaa
                    </div>
                    <i class="dropdown icon"></i>
                    <div class="menu">
                        <a href="#" class="item">我的账户</a>
                        <a href="#" class="item">注销</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <a href="#" class="ui menu toggle black icon button m-right-top m-mobile-show">
        <i class="sidebar icon"></i>
    </a>
</nav>

<div class="m-container-small m-padded-tb-big">
    <div class="ui container">
        <div class="ui success large message">
            <h2>Hi,</h2>
            <p>aaa，欢迎登录</p>
        </div>
        <img src="<%=path%>/resources/admin/images/index.jpg" class="ui rounded bordered fluid image">

    </div>

</div>

<!--底部容器-->
<%@include file="footer.jsp"%>

<script src="https://cdn.jsdelivr.net/npm/jquery@3.2/dist/jquery.min.js"></script>
<!--引入semantic的js库-->
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
<script src="//cdn.jsdelivr.net/npm/jquery.scrollto@2.1.2/jquery.scrollTo.min.js"></script>
<script src="<%=path%>/resources/admin/lib/prism/prism.js" ></script>
<script src="<%=path%>/resources/admin/lib/tocbot/tocbot.min.js"></script>
<script>
    $(".menu.toggle").click(function (){
        $(".m-item").toggleClass('m-mobile-hide');
    });
    $('.ui.dropdown').dropdown({
        on:'hover'
    });
    $("#index-btn").click(function () {
        window.location.href='<%=path%>/admin/index';

    })
</script>

</body>
</html>
