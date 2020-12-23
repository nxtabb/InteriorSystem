<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/12/23
  Time: 13:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>、
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%String path = request.getContextPath();%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <!--设置移动端-->
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <title>发布文档</title>
    <!--引入css-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
    <link rel="stylesheet" href="<%=path%>/resources/admin/lib/editormd/css/editormd.min.css">
    <link rel="stylesheet" href="<%=path%>/resources/admin/css/me.css">

</head>
<body>
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
</body>

<!--文档内容-->
<div class="m-padded-tb-large m-container">
    <div class="ui container">
        <div class="ui success message">
            <i class="close icon"></i>
            <div class="header">提示：</div>
            <p>亲爱的用户，您可以在这里修改或删除该图片</p>
        </div>


        <!--显示信息的表格-->
        <table class="ui compact teal table">
            <thead>
            <tr>
                <th>滑动图片名称</th>
                <th>滑动图片大小(MB)</th>
                <th>图片上传时间</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
            <c:if test="${fileLenList!=null}">
                <c:forEach items="${fileLenList}" var="file">
                    <tr>
                        <td>${file.file.fileOriginName}</td>
                        <td><fmt:formatNumber value="${file.length}" type="number" maxFractionDigits="2" /></td>
                        <td><fmt:formatDate value="${file.file.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/> </td>
                        <td>
                            <a href="<%=path%>/admin/files/downloadFile/${file.file.fileId}" class="ui mini teal button">查看</a>
                            <a href="<%=path%>/admin/files/onlydeleteFile/${document.documentId}/${file.file.fileId}" class="ui mini red button">删除</a>
                        </td>
                    </tr>
                </c:forEach>
            </c:if>
            </tbody>
        </table>


        <form class="ui form" action="<%=path%>/admin/documents/updatedocument/${document.documentId}" method="post" id="document_form" enctype="multipart/form-data">
            <h2 >滑动图片 描述1</h2>
            <div class="required field">
                <textarea placeholder="文档描述" name="description">${document.description}</textarea>
            </div>
            <h2 >滑动图片 描述2</h2>
            <!--textarea-->
            <div class="required field">
                <div id="md-content" style="z-index: 1 !important;">
                    <textarea name="content" style="display: none">${document.content}</textarea>
                </div>
            </div>
            <!--checkbox的容器-->
            <div class="inline fields">
                <h2>滑动图片上传</h2>
                <input type="file"  name="codefile" multiple>
            </div>
            <div class="ui error message"></div>



            <!--三个按钮-->
            <div class="ui right aligned container">
                <button class="ui button" type="button" onclick="window.history.go(-1)">返回</button>
                <button class="ui teal button" id="btn_public">完成修改并发布</button>
            </div>
        </form>
    </div>
    <div class="popup_con">
        <div class="popup">
            <p>正在上传请稍候。。</p>
        </div>
    </div>
</div>

<!--底部容器-->
<%@include file="footer.jsp"%>
<!--引入jquery-->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.2/dist/jquery.min.js"></script>
<!--引入semantic的js库-->
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
<script>
    var contentEditor;
    $(function (){
        //初始化编辑器
        contentEditor = editormd("md-content",{
            width:"100%",
            height:"500px",
            syncScrolling: "single",
            path:"<%=path%>/resources/lib/editormd/lib/"
        });
    })
    $(".menu.toggle").click(function (){
        $(".m-item").toggleClass('m-mobile-hide');
    });
    $('.ui.dropdown').dropdown({
        on:'hover'
    });
    $('.ui.form').form({
        fields:{
            title:{
                identifier: 'title',
                rules:[{
                    type:'empty',
                    prompt:'标题：请输入文档标题'
                }]
            },
            content:{
                identifier: 'content',
                rules:[{
                    type:'empty',
                    prompt:'标题：请输入文档内容'
                }]
            },
            typeId:{
                identifier: 'typeId',
                rules:[{
                    type:'empty',
                    prompt:'标题：请输入文档类别'
                }]
            },
            firstPicture:{
                identifier: 'firstPicture',
                rules:[{
                    type:'empty',
                    prompt:'标题：请输入文档首图地址'
                }]
            },
            tagIdList:{
                identifier: 'tagIdList',
                rules:[{
                    type:'empty',
                    prompt:'标题：请输入文档标签'
                }]
            },
            description:{
                identifier: 'description',
                rules:[{
                    type:'empty',
                    prompt:'标题：请输入文档描述'
                }]
            }
        }
    })
    $("#btn_save").click(function () {
        $("#saveorpublic").val("0");
        $("#document_form").submit();
        localStorage.setItem('order_finish',60);
        $('.popup_con').fadeIn('fast', function() {
            setTimeout(function(){
                $('.popup_con').fadeOut('fast',function(){
                });
            },3000)
        });
    })
    $("#btn_public").click(function () {
        $("#saveorpublic").val("1");
        $("#document_form").submit();
        localStorage.setItem('order_finish',60);
        $('.popup_con').fadeIn('fast', function() {
            setTimeout(function(){
                $('.popup_con').fadeOut('fast',function(){
                });
            },3000)
        });
    });
    $("#index-btn").click(function () {
        window.location.href='<%=path%>/admin/index';
    })
</script>

</body>
</html>
