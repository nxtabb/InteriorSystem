<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/12/25
  Time: 11:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%String path = request.getContextPath();%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>装修推荐信息录入</title>
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
                <li class="breadcrumb-item"><a href="<%=path%>/question">装修推荐</a></li>
            </ol>
        </nav>
    </div>
</div>

<!-- /single-page -->
<section class="detail">
    <div class="container container-narrow py-md-5">
        <h4 class="heading text-center">装修推荐</h4>
        <div class="single-w3pvt-page mt-md-5 mt-4">
            <form method="post" action="<%=path%>/question" id="form1">
                <div class="form-group">
                    <label for="name">姓名</label>
                    <input type="text" class="form-control" id="name" placeholder="姓名" name="name">
                </div>
                <div class="form-group">
                    <label for="sex">性别</label>
                    <select class="form-control" id="sex" name="sex">
                        <option value="1">男</option>
                        <option value="2">女</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="age">年龄</label>
                    <select class="form-control" id="age" name="age" >
                        <%for (int i=1;i<=120;i++){
                            %>
                        <option value="<%=i%>" <%if(i==30)%>selected<%%>  ><%=i%>岁</option>
                        <%}%>
                    </select>
                </div>
                <div class="form-group">
                    <label for="grade">学历</label>
                    <select class="form-control" id="grade" name="grade">
                        <option value="1">本科及以下</option>
                        <option value="2">硕士</option>
                        <option value="3">博士及以上</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="money">大约年收入(万元)</label>
                    <input type="text" class="form-control" id="money" placeholder="大约年收入" name="money">
                </div>
                <div class="form-group">
                    <label for="num">居住人数</label>
                    <select class="form-control" id="num" name="num">
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5人及以上</option>
                    </select>
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" name="pet"> 是否养宠物
                    </label>
                </div>
            </form>
            <button class="btn btn-default" id="btn01">提交</button>
        </div>
    </div>
</section>
<!-- //single-page -->
<%@include file="foot.jsp"%>


<script src="<%=path%>/resources/js/jquery-3.2.1.min.js"></script>
<script src="<%=path%>/resources/js/bootstrap.min.js"></script>
<script>
    $("#btn01").click(function () {
        var name = $("#name").val();
        var money = $("#money").val();
        if(money==""||money.length==0){
            alert("输入的信息有误");
            window.location.href = "<%=path%>/question";
            return
        }
        if(!money.match(/^[0-9]*$/)){
            alert("输入的信息有误");
            window.location.href = "<%=path%>/question";
            return;
        }
        if(name==""||name.length==0){
            alert("输入的信息有误");
            window.location.href = "<%=path%>/question";
            return;
        }else {
            $("#form1").submit();
        }
    })
</script>
</body>

</html>
