<%--
  Created by IntelliJ IDEA.
  User: nxt
  Date: 2020/12/14
  Time: 10:27 上午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<%String path = request.getContextPath();%>
<head>
    <title>首页</title>
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
    <link href="<%=path%>/resources/css/font-awesome.css" rel="stylesheet ">
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
<!-- banner -->

<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
        <div class="carousel-item active" style="background-image: url(<%=path%>/resources/images/${slideImage.slideImage});">
            <div class="banner-text">
                <div class="container">
                    <h2 class="agile-title text-capitalize">${slideImage.slideImageTitle1}</h2>
                    <p>${slideImage.slideImageTitle2}</p>
                    <a href="contact.html" class="btn">查看更多</a>
                </div>
            </div>
        </div>
        <c:forEach items="${slideImages1}" var="image">
            <div class="carousel-item" style="background-image: url(<%=path%>/resources/images/${image.slideImage});">
                <div class="banner-text">
                    <div class="container">
                        <h2 class="agile-title text-capitalize">${image.slideImageTitle1}</h2>
                        <p>${image.slideImageTitle2}</p>
                        <a href="contact.html" class="btn">查看更多</a>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
<!-- //banner -->

<!-- about -->
<section class="content-info" style="background-image: url(<%=path%>/resources/images/bg.jpg);">
    <div class="container">
        <h3 class="heading text-center mb-3 mb-sm-5">About us/关于我们</h3>
        <div class="info-w3pvt-mid">
            <div class="title-desc text-center">
                <p>
                   ${about.content}
                </p>
                <a class="btn mt-lg-4 mt-3 read scroll" href="<%=path%>/aboutus" role="button">查看更多</a>
            </div>
        </div>
    </div>
</section>
<!-- //about -->

<!-- pricing -->
<section class="new py-5" style="background-image: url(<%=path%>/resources/images/bg2.jpg);">
    <div class="container py-md-5">
        <div class="row pricing-grids">
            <div class="col-lg-6  mb-lg-0 mb-5">
                <div class="padding">
                    <h3 class="text-light pb-2">室内设计指导/Guidance</h3>
                    <c:forEach items="${articles}" var="article">
                    <!-- Item starts -->
                    <div class="menu-item my-3">
                        <div class="row border-dot no-gutters">
                            <div class="col-8 menu-item-name">
                                <a href="<%=path%>/article/${article.articleId}">
                                    <h6 class="text-light">${article.articleTitle}</h6>
                                </a>
                            </div>
                            <div class="col-4 menu-item-price text-right">
                                <h6 class="text-light"><fmt:formatDate value="${article.lastEditTime}" pattern="yyyy-MM-dd"/></h6>
                            </div>
                        </div>

                    </div>
                    </c:forEach>
                    <!-- Item ends -->
                </div>
            </div>
            <div class="col-lg-6 mb-lg-0 mb-5">
                <div class="padding">
                    <a href="#"><img class="pt-4" src="<%=path%>/resources/images/${news.get(0).articleImage}" alt=""></a>
                    <div class="menu-item mt-3 mb-2">
                        <div class="row no-gutters">
                            <div class="col-8 menu-item-name">
                                <a href="detail1.html">
                                    <h5 class="text-light">${news.get(0).articleTitle}</h5>
                                </a>
                            </div>
                            <div class="col-4 menu-item-price text-right">
                                <h6 class="text-light"><fmt:formatDate value="${news.get(0).lastEditTime}" pattern="yyyy-MM-dd"/></h6>
                            </div>
                        </div>
                    </div>
                    <p class="text-light">${news.get(0).articleContent}</p>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- /services -->

<section class="services" id="services" style="background-image: url(<%=path%>/resources/images/bg1.jpg);">
    <div class="container">
        <h3 class="heading text-center mb-5">案例展示/CASE</h3>
        <div class="row">
            <c:forEach var="indexImage" items="${indexImageList}">
            <div class="col-md-3 col-sm-6 col-12 mb-2">
                <div class="ab-content-inner">
                    <a href="<%=path%>/firstCase/${indexImage.firstCaseName}/1"><img src="<%=path%>/resources/images/indexExamples/${indexImage.firstCaseImage}" alt="news image"  width="200px" height="130px"></a>
                    <div class="ab-info-con">
                        <a href="<%=path%>/firstCase/${indexImage.firstCaseName}/1">
                            <h4>${indexImage.firstCaseName}</h4>
                        </a>
                    </div>
                </div>
            </div>
            </c:forEach>
        </div>
    </div>

</section>
<!-- /services -->
<%@include file="foot.jsp"%>
<!-- //footer -->


<script src="<%=path%>/resources/js/jquery-3.2.1.min.js"></script>
<script src="<%=path%>/resources/js/bootstrap.min.js"></script>
</body>

</html>
