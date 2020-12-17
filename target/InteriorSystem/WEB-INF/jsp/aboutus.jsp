<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/12/16
  Time: 10:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%String path = request.getContextPath();%>
<html>
<head>
    <title>关于我们</title>
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
<div class="inner-page-banner" style="background-image: url(<%=path%>/resources/images/ban1.jpg);">
    <div class="container">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#">网站首页</a></li>
                <li class="breadcrumb-item active" aria-current="page">企业简介</li>
            </ol>
        </nav>
    </div>
</div>

<!-- about -->
<section class="content-info" id="about">
    <div class="container py-md-5">
        <h3 class="heading text-center mb-3 mb-sm-5">About us/关于我们</h3>
        <div class="info-w3pvt-mid">
            <div class="title-desc">
                <p>
                    Praesent ullamcorper dui turpis.At vero eos et accusam et justo duo dolores et ea rebum.Integer sit amet mattis quam, sit amet ultricies velit. Praesent ullamcorper dui turpis. Praesent ullamcorper dui turpis.At vero eos et accusam et justo duo dolores et ea rebum.Integer sit amet mattis quam, sit amet ultricies velit. Praesent ullamcorper dui turpis.
                </p>
            </div>
        </div>
    </div>
</section>
<!-- //about -->
<!-- about -->
<section class="content-info" id="about">
    <div class="container py-md-5">
        <h3 class="heading text-center mb-3 mb-sm-5">About us/关于我们</h3>
        <div class="row">
            <div class="col-md-5 mb-3">
                <img src="<%=path%>/resources/images/t1.jpg" alt="">
            </div>
            <div class="col-md-7">
                <div class="info-w3pvt-mid">
                    <div class="title-desc">
                        <p>
                            Praesent ullamcorper dui turpis.At vero eos et accusam et justo duo dolores et ea rebum.Integer sit amet mattis quam, sit amet ultricies velit. Praesent ullamcorper dui turpis. Praesent ullamcorper dui turpis.At vero eos et accusam et justo duo dolores et ea rebum.Integer sit amet mattis quam, sit amet ultricies velit. Praesent ullamcorper dui turpis.
                        </p>
                    </div>
                </div>
            </div>
        </div>

    </div>
</section>
<%@include file="foot.jsp"%>
</body>
</html>
