<%@ page import="java.util.List" %>
<%@ page import="com.hrbeu.pojo.User" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/9/20
  Time: 11:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%String path = request.getContextPath();%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <!--设置移动端-->
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <title>文档管理</title>
    <!--引入css-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
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
            <a href="#"><h2 class="ui teal header item" id="index-btn">后台管理系统</h2></a>
            <!--菜单栏-->
            <a href="#" class="m-item item m-mobile-hide"><i class="image icon"></i>首页轮播图管理</a>
            <a href="#" class="m-item item m-mobile-hide"><i class="idea icon"></i>文档管理</a>
            <a href="#" class="m-item item m-mobile-hide"><i class="warehouse icon"></i>档案馆管理</a>
            <a href="#" class="m-item item m-mobile-hide"><i class="user icon"></i>关于我们管理</a>
            <a href="#" class="m-item item m-mobile-hide"><i class="setting icon"></i>建材管理</a>
            <!--头像-->
            <div class="right m-item m-mobile-hide menu">
                <div class="ui dropdown item">
                    <div class="text">
                        <img src="https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3666320968,1466738194&fm=26&gp=0.jpg" >
                        ${sessionScope.user.nickname}
                    </div>
                    <i class="dropdown icon"></i>
                    <div class="menu">
                        <a href="<%=path%>/admin/myaccount" class="item">我的账户</a>
                        <a href="<%=path%>/admin/logout" class="item">注销</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <a href="#" class="ui menu toggle black icon button m-right-top m-mobile-show">
        <i class="sidebar icon"></i>
    </a>
</nav>

<!--中间内容容器-->
<div class="m-padded-tb-large m-container-small">
    <div class="ui container">
        <!--搜索的form-->
        <h2>当前位置：首页</h2>
        <!--显示信息的表格-->
        <table class="ui compact teal table">
            <thead>
            <tr>
                <th></th>
                <th>标题</th>
                <th>类型</th>
                <th>推荐</th>
                <th>更新时间</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>

            <c:forEach var="document" items="${documentList}">

                <tr>
                    <td>${document.documentId}</td>
                    <td>${document.title}</td>
                    <td>${document.type.typeName}</td>
                    <td><c:if test="${document.recommend==1}">是</c:if>
                        <c:if test="${document.recommend==0}">否</c:if></td>
                    <td><fmt:formatDate value="${document.lastEditTime}" timeStyle="yyyy-MM-dd"/>  </td>
                    <td>
                        <a href="<%=path%>/admin/documents/updatedocument/${document.documentId}" class="ui mini teal button">编辑</a>
                        <a href="<%=path%>/admin/documents/deleteById/${document.documentId}" class="ui mini red button">删除</a>
                    </td>
                </tr>
            </c:forEach>

            </tbody>
            <tfoot>
            <tr>
                <th colspan="6">
                    <div class="ui mini floated pagination menu">
                        <a class="icon item" id="prePage">上一页</a>
                        <a class="icon item" id="nextPage">下一页</a>
                    </div>

                    <a href="<%=path%>/admin/documents/adddocument" class="ui mini right floated basic button">新增</a>
                </th>
            </tr>
            </tfoot>
        </table>
    </div>
</div>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

<!--底部容器-->
<%@include file="footer.jsp"%>
<!--引入jquery-->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.2/dist/jquery.min.js"></script>
<!--引入semantic的js库-->
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
<script>
    $(".menu.toggle").click(function (){
        $(".m-item").toggleClass('m-mobile-hide');
    });
    $('.ui.dropdown').dropdown({
        on:'hover'
    });
    $("#nextPage").click(function () {
        window.location.href="<%=path%>/admin/documentsIndex/"+${nextPage};
    })
    $("#prePage").click(function () {
        window.location.href="<%=path%>/admin/documentsIndex/"+${prePage};
    })
    $("#search-btn").click(function (){
        $("#search_form").submit();
    })
    $("#index-btn").click(function () {
        window.location.href='<%=path%>/admin/index';
    })
</script>
</body>
</html>