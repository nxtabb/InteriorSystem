<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/12/14
  Time: 16:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- header -->
<header>
    <div class="container">
        <div class="header d-lg-flex justify-content-between align-items-center">
            <div class="header-agile">
                <h1>
                    <a class="navbar-brand logo" href="<%=path%>/index">
                        <span><img src="<%=path%>/resources/images/logo.png" alt=""></span>
                    </a>
                </h1>
            </div>
            <div class="nav_w3ls">
                <nav>
                    <label for="drop" class="toggle mt-lg-0 mt-1"><span class="fa fa-bars"
                                                                        aria-hidden="true"></span></label>
                    <input type="checkbox" id="drop" />
                    <ul class="menu">
                        <li class="mr-lg-3 mr-2"><a href="<%=path%>/index">网站首页</a></li>
                        <li class="mr-lg-3 mr-2"><a href="aboutus.html">风格评估</a></li>
                        <li class="mr-lg-3 mr-2"><a href="index.html">文章与通告</a></li>
                        <li class="mr-lg-3 mr-2"><a href="index.html">室内设计案例</a></li>
                        <li class="mr-lg-3 mr-2"><a href="<%=path%>/aboutus">关于我们</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</header>
