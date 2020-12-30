<%--
  Created by IntelliJ IDEA.
  User: nxt
  Date: 2020/12/29
  Time: 3:16 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%String path = request.getContextPath();%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">

<head>
    <title>装修材料</title>
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
<div class="inner-page-banner" style="background-image: url(<%=path%>/resources/images/ban1.jpg);">
    <div class="container">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="<%=path%>/index">网站首页</a></li>
                <li class="breadcrumb-item"><a href="<%=path%>/firstCase/1">装修档案馆</a></li>
                <li class="breadcrumb-item active" aria-current="page">${secondCase.secondCaseDescription}</li>
            </ol>
        </nav>
        <div class="col-12 mt-md-3 text-right"><button class="btn btn-light" id="return"><i class="fa fa-share"></i>返回</button></div>
    </div>
</div>

<!-- /single-page -->
<section class="detail">
    <div class="container container-narrow py-md-5">
        <h4 class="heading text-center">${secondCase.secondCaseDescription}对应的建材列表</h4>
        <p class="text-center mt-2"><fmt:formatDate value="${materialList.get(0).lastEditTime}" pattern="yyyy-MM-dd"/></p>
        <div class="single-w3pvt-page mt-md-5 mt-4">

            <div class="content-sing-w3ls">

                <div class="panel panel-default">

                    <!-- Table -->
                    <table class="table">
                        <tr>
                            <td>建材名称</td>
                            <td>建材价格</td>
                            <td align="center">操作</td>
                        </tr>
                        <c:forEach items="${materialList}" var="material">
                            <tr>
                                <td>${material.materialName}</td>
                                <td>¥${material.materialPrice}</td>
                                <td align="center">
                                    <button class="btn btn-group">下载图片</button>
                                </td>
                            </tr>
                        </c:forEach>
                    </table>
                </div>
            </div>

        </div>
    </div>
</section>
<!-- //single-page -->

<%@include file="foot.jsp"%>
<!-- //footer -->


<script src="<%=path%>/resources/js/jquery-3.2.1.min.js"></script>
<script src="<%=path%>/resources/js/bootstrap.min.js"></script>
<script>
    $("#return").click(function () {
        window.history.back();
    })
</script>
</body>

</html>
