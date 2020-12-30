<%--
  Created by IntelliJ IDEA.
  User: nxt
  Date: 2020/12/28
  Time: 2:07 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%String path = request.getContextPath();%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html lang="en">

<head>
    <title>装修详情</title>
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
<div class="inner-page-banner" style="background-image: url(<%=path%>/resources/images/ban1.jpg);">
    <div class="container">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="<%=path%>/index">网站首页</a></li>
                <li class="breadcrumb-item"><a href="<%=path%>/firstCase/1">装修档案馆</a></li>
                <li class="breadcrumb-item active" aria-current="page">${description}</li>
            </ol>
        </nav>
    </div>
</div>
<!--//team -->
<section class="banner-bottom py-5">
    <div class="container container-narrow py-md-5">
        <div class="row mt-lg-5 mt-4">
            <c:forEach items="${secondCaseSupList}" var="secondCaseSup">
            <div class="col-md-3 col-sm-6 col-12 team-gd text-center">

                <div class="team-img mb-4">
                    <a href="<%=path%>/materials/${secondCaseSup.secondCase.secondCaseId}"><img src="<%=path%>/resources/images/examples/${secondCaseSup.path}" width="300px" height="200px" alt="user-image"></a>
                </div>
                <div class="team-info">
                    <a href="<%=path%>/materials/${secondCaseSup.secondCase.secondCaseId}">
                        <h3 class="mt-md-4 mt-3">${secondCaseSup.secondCase.secondCaseDescription}</h3>
                    </a>
                </div>


            </div>
            </c:forEach>
            <div class="pages">
                <a href="<%=path%>/secondcase/${firstCaseId}/${pageInfo.get('prePage')}">«</a>
                <c:if test="${pageInfo.get('prePage')}>2">
                    <a href="<%=path%>/secondcase/${firstCaseId}/${pageInfo.get("prePage")}">${pageInfo.get("prePage")}</a></c:if>
                <a href="<%=path%>/secondcase/${firstCaseId}/${pageIndex}">${pageIndex}</a>
                <c:if test="${pageInfo.get('nextPage')}>2">
                    <a href="<%=path%>/secondcase/${firstCaseId}/${pageInfo.get("prePage")}">${pageInfo.get("prePage")}</a></c:if>
                <a href="<%=path%>/secondcase/${firstCaseId}/${pageInfo.get("nextPage")}">»</a>
            </div>
        </div>
    </div>
</section>
<!--//team -->

<%@include file="foot.jsp"%>

<script src="<%=path%>/resources/js/jquery-3.2.1.min.js"></script>
<script src="<%=path%>js/bootstrap.min.js"></script>
</body>

</html>
