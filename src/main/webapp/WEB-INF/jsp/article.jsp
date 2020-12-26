<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/12/25
  Time: 11:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%String path = request.getContextPath();%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>推荐文章</title>
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8" />
    <meta name="keywords" content="" />
    <!-- //Meta tag Keywords -->
    <!-- Custom-Files -->
    <link rel="stylesheet" href="<%=path%>/resources/css/bootstrap.css">
    <!-- Bootstrap-Core-CSS -->
    <link rel="stylesheet" href="<%=path%>/resources/css/style.css" type="text/css" media="all" />
    <!-- Style-CSS -->
    <!-- font-awesome-icons -->
    <link href="<%=path%>/resources/css/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome-icons -->
    <!-- /Fonts -->
    <link href="http://fonts.googleapis.com/css?family=Oswald:200,300,400,500,600,700" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i"
          rel="stylesheet">
    <!-- //Fonts -->

</head>

<body>


<!-- header -->
<%@include file="head.jsp"%>
<!-- //header -->
<div class="inner-page-banner" style="background-image: url(<%=path%>/resources/images/ban1.jpg);">
    <div class="container">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="<%=path%>/index">网站首页</a></li>
                <li class="breadcrumb-item"><a href="#">室内设计推荐文章</a></li>
            </ol>
        </nav>
    </div>
</div>

<!-- /single-page -->
<section class="detail">
    <div class="container container-narrow py-md-5">
        <h4 class="heading text-center">${article.articleTitle}</h4>
        <div class="single-w3pvt-page mt-md-5 mt-4">
            <div class="content-sing-w3ls">
                <p class="mt-3">
                <h5> 作者：${article.user.nickname} 发布于：<fmt:formatDate value="${article.lastEditTime}" pattern="yyyy-MM-dd"/></h5>
                </p>
                <p><h6>${article.articleContent}</h6></p>
            </div>
        </div>
    </div>
</section>
<!-- //single-page -->
<div class="pages">
    <a href="">«</a>
    <a href="">»</a>
</div>
<%@include file="foot.jsp"%>


<script src="<%=page%>/resources/js/jquery-3.2.1.min.js"></script>
<script src="<%=page%>/resources/js/bootstrap.min.js"></script>
</body>

</html>
