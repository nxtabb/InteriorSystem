<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/12/25
  Time: 15:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%String path = request.getContextPath();%>
<html lang="en">
<head>
    <title>新闻</title>
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


<%@include file="head.jsp"%>
<!-- //header -->

<div class="inner-page-banner" style="background-image: url(images/ban1.jpg);">
    <div class="container">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item"><a href="#">Library</a></li>
                <li class="breadcrumb-item active" aria-current="page">Data</li>
            </ol>
        </nav>
    </div>
</div>


<!-- news -->
<section class="pricing">
    <div class="container container-narrow py-md-5 px-lg-5">
        <div class="row">
            <div class="col-lg-12">
                <div class="padding">
                    <!-- Item starts -->
                    <c:forEach items="${articles}" var="article">
                    <div class="menu-item mt-4">
                        <div class="row border-dot no-gutters">
                            <div class="col-8 menu-item-name">
                                <a href="<%=path%>/article/${article.articleId}">
                                    <h6>${article.articleTitle}</h6>
                                </a>
                            </div>
                            <div class="col-4 menu-item-price text-right">
                                <h6><fmt:formatDate value="${article.lastEditTime}" pattern="yyyy-MM-dd"/></h6>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                    <!-- Item ends -->
                </div>
            </div>
            <div class="pages">
                <a href="">«</a>
                <a href="" class="now">1</a>
                <a href="">2</a>
                <a href="">3</a>
                <a href="">»</a>
            </div>
        </div>
    </div>
</section>
<!-- //news -->
<!--//testimonials-->

<%@include file="foot.jsp"%>
<script src="<%=path%>/resources/js/jquery-3.2.1.min.js"></script>
<script src="<%=path%>/resources/js/bootstrap.min.js"></script>
</body>

</html>
