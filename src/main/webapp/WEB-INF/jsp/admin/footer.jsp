<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/10/1
  Time: 21:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!--底部容器-->
<footer class="ui inverted vertical segment m-padded-tb-massive " id="footer">
    <div class="ui center aligned container">
        <!--将页面分成16份-->
        <div class="ui inverted divided stackable grid">
            <!--微信头像占三份-->
            <div class="three wide column">
                <div class="ui inverted link list">
                    <div class="item">
                        <img src="<%=path%>/resources/admin/images/wechat.png" class="ui rounded image" style="width: 150px">
                    </div>
                </div>
            </div>
            <div class="three wide column">
                <h4 class="ui inverted header">相关搜索</h4>
                <div class="ui inverted link list">
                    <a href="http://www.hrbeu.edu.cn/" class="item">哈尔滨工程大学</a>
                    <a href="http://cstc.hrbeu.edu.cn/" class="item">哈尔滨工程大学计算机科学与技术学院</a>
                    <a href="http://homepage.hrbeu.edu.cn/web/liujie1" class="item">教师主页</a>
                </div>
            </div>
            <div class="three wide column">
                <h4 class="ui inverted header">联系我们</h4>
                <div class="ui inverted link list">
                    <a href="#" class="item">Email:519923938@qq.com</a>
                    <a href="#" class="item">QQ:519923938</a>
                    <a href="#" class="item">Phone:18646201718</a>
                </div>
            </div>
            <div class="seven wide column">
                <h4 class="ui inverted header">介绍</h4>
                <p>
                    这是哈尔滨工程大学刘杰教授实验室专用网站，用于进行学习总结。
                </p>
            </div>

        </div>
        <div class="ui inverted section divider"></div>
        <p class="m-text-thin m-text-spaced">2020-2021 © 哈尔滨工程工程大学 - All Rights Reserved.</p>

    </div>
</footer>
