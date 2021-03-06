<%@ page import="com.hrbeu.pojo.User" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/9/20
  Time: 11:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
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
    <link rel="stylesheet" href="<%=path%>/resources/lib/editormd/css/editormd.min.css">
    <link rel="stylesheet" href="<%=path%>/resources/css/me.css">

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
            <a href="<%=path%>/admin/documentsIndex/1" class="active m-item item m-mobile-hide"><i class="home icon"></i>文档</a>
            <a href="<%=path%>/admin/types/1" class="m-item item m-mobile-hide"><i class="idea icon"></i>分类</a>
            <a href="<%=path%>/admin/tags/1" class="m-item item m-mobile-hide"><i class="tags icon"></i>标签</a>
            <!--头像-->
            <div class="right m-item m-mobile-hide menu">
                <div class="ui dropdown item">
                    <div class="text">
                        <img src="${sessionScope.user.image}" >
                        ${sessionScope.user.nickname}
                    </div>
                    <i class="dropdown icon"></i>
                    <div class="menu">
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
<!--标题-->
<div class="ui attached pointing menu">
    <div class="ui container">
        <div class="right menu">
            <a href="<%=path%>/admin/documents/adddocument" class="teal item active">发布</a>
            <a href="<%=path%>/admin/documentsIndex/1" class="item">列表</a>
        </div>
    </div>

</div>




<!--文档内容-->
<div class="m-padded-tb-large m-container">
    <div class="ui container">
        <div class="ui success message">
            <i class="close icon"></i>
            <div class="header">提示：</div>
            <p>亲爱的用户，您可以先删除附属文件在上传新的附属文件，或直接上传新的附属文件，系统不会自动删除同名文件</p>
        </div>


        <!--显示信息的表格-->
        <table class="ui compact teal table">
            <thead>
            <tr>
                <th>附属文件名称</th>
                <th>附属文件大小(MB)</th>
                <th>文档上传时间</th>
                <th>最后更新时间</th>
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
                        <td><fmt:formatDate value="${file.file.lastEditTime}" pattern="yyyy-MM-dd HH:mm:ss"/> </td>
                        <td>
                            <a href="<%=path%>/admin/files/downloadFile/${file.file.fileId}" class="ui mini teal button">下载</a>
                            <a href="<%=path%>/admin/files/onlydeleteFile/${document.documentId}/${file.file.fileId}" class="ui mini red button">删除</a>
                        </td>
                    </tr>
                </c:forEach>
            </c:if>
            </tbody>
        </table>


        <form class="ui form" action="<%=path%>/admin/documents/updatedocument/${document.documentId}" method="post" id="document_form" enctype="multipart/form-data">
            <!--输入标题-->
            <div class="required field">
                <div class="ui left labeled input">
                    <div class="ui selection compact teal basic dropdown label">
                        <input type="hidden" value="<c:if test='${document.flag==1}'>1</c:if><c:if test='${document.flag==2}'>2</c:if><c:if test='${document.flag==3}'>3</c:if>" name="flag">
                        <i class="dropdown icon"></i>
                        <div class="text">原创</div>
                        <div class="menu">
                            <div class="item" data-value="1">原创</div>
                            <div class="item" data-value="2">转载</div>
                            <div class="item" data-value="3">翻译</div>
                        </div>
                    </div>
                    <input type="text" name="title" value="${document.title}" placeholder="标题">
                </div>
            </div>
            <h2 >文档摘要</h2>
            <div class="required field">
                <textarea placeholder="文档描述" name="description">${document.description}</textarea>
            </div>
            <!--textarea-->
            <div class="required field">
                <div id="md-content" style="z-index: 1 !important;">
                    <textarea name="content" style="display: none">${document.content}</textarea>
                </div>
            </div>
            <!--两个下拉框的容器-->
            <div class="two fields">
                <!--选择分类的下拉框-->
                <div class="required field">
                    <div class="ui left labeled action input">
                        <label class="ui compact teal basic label">分类</label>
                        <div class="ui fluid selection dropdown">
                            <input type="hidden" name="typeId" value="${document.type.typeId}">
                            <i class="dropdown icon"></i>
                            <div class="default text">分类</div>
                            <div class="menu">
                                <c:forEach items="${typeList}" var="type">
                                    <div class="item" data-value="${type.typeId}">${type.typeName}</div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
                <!--选择标签的下拉框-->
                <div class="required field">
                    <div class="ui left labeled action input">
                        <label class="ui compact teal basic label">标签</label>
                        <div class="ui fluid multiple search selection dropdown">
                            <input type="hidden" name="tagIdList" value="${taglist_doc}">
                            <i class="dropdown icon"></i>
                            <div class="default text">标签</div>
                            <div class="menu">
                                <c:forEach items="${tagList}" var="tag">
                                    <div class="item" data-value="${tag.tagId}">${tag.tagName}</div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--首图地址栏-->
            <div class="required field">
                <div class="ui left labeled input">
                    <label class="ui teal basic label">首图</label>
                    <input type="text" name="firstPicture" value="${document.firstPicture}">
                </div>
            </div>

            <input type="hidden" name="saveorpublic" id="saveorpublic" value="${document.published}">
            <!--checkbox的容器-->
            <div class="inline fields">
                <!--是否被推荐-->
                <div class="field">
                    <input type="checkbox" name="recommend" class="hidden" id="recommend" <c:if test="${document.recommend==1}">checked</c:if>>
                    <label for="recommend">推荐</label>
                </div>
                <!--是否被转载-->
                <div class="field">
                    <input type="checkbox" name="shareInfo" class="hidden" id="shareInfo" <c:if test="${document.shareInfo==1}">checked</c:if>>
                    <label for="shareInfo">转载</label>
                </div>
                <!--是否被赞赏-->
                <div class="field">
                    <input type="checkbox" name="appreciate" class="hidden" id="appreciate" <c:if test="${document.appreciate==1}">checked</c:if>>
                    <label for="appreciate">赞赏</label>
                </div>
                <!--是否可以留言-->
                <div class="field">
                    <input type="checkbox" name="commentAble" class="hidden" id="commentAble" <c:if test="${document.commentAble==1}">checked</c:if>>
                    <label for="commentAble">评论</label>
                </div>
                <h6>附属文件再次上传</h6>
                <input type="file"  name="codefile" multiple>
            </div>
            <div class="ui error message"></div>



            <!--三个按钮-->
            <div class="ui right aligned container">
                <button class="ui button" type="button" onclick="window.history.go(-1)">返回</button>
                <button class="ui secondary button" id="btn_save">仅保存不发布</button>
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
<jsp:include page="../footer.jsp"/>
<!--引入jquery-->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.2/dist/jquery.min.js"></script>
<!--引入semantic的js库-->
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
<script src="<%=path%>/resources/lib/editormd/editormd.min.js"></script>
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