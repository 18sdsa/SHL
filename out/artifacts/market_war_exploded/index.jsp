<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap3/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap3/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/blog.css">
    <script src="${pageContext.request.contextPath}/static/bootstrap3/js/jquery-1.11.2.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/bootstrap3/js/bootstrap.min.js"></script>
    <title>收货郎主页</title>
    <style type="text/css">
        body{
            padding-top:10px;
            padding-bottom:40px;
            background-color: #F8F8FF;
            font-family: microsoft yahei;
        }
    </style>
</head>

<body>
<div class="container">
    <div class="row">
        <div class="col-md-4">
            <div class="blog"><strong>收货郎logo</strong></div>
        </div>
        <div class="col-md-8">
            <iframe style="float:right" width="420" scrolling="no" height="60" frameborder="0"
                    allowtransparency="true"
                    src="http://i.tianqi.com/index.php?c=code&id=12&icon=1&num=5"></iframe>
        </div>
    </div>

    <div class="row" style="padding-top: 10px">
        <div class="col-md-12">
            <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
<%--                            active表示显示底纹--%>
                            <li class=""><a class="navbar-brand" href="#">首页</a></li>
                            <li><a class="navbar-brand" href="${pageContext.request.contextPath}/commodity/toOrder">我的订单</a></li>
                            <li><a class="navbar-brand" href="${pageContext.request.contextPath}/commodity/toCart">我发布的闲置</a></li>
                        </ul>
                        <form class="navbar-form navbar-right" role="search">
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="请输入要查询的关键字">
                            </div>
                            <button type="submit" class="btn btn-default">搜索</button>
                        </form>
                    </div><!-- /.navbar-collapse -->
                </div><!-- /.container-fluid -->
            </nav>
        </div>
    </div>

    <div class="row">
        <div class="col-md-3">
            <div class="data_list">
                <div class="data_list_title">
                    <img src="${pageContext.request.contextPath}/static/images/user_icon.png"/>
                    个人信息
                </div>


                <div class="user_image">
<%--                    登录显示登录信息，没登录先登录--%>
                    <%
                        String user = (String)session.getAttribute( "user" );

                        if ( user == null || user == "" )
                        {
                    %>
                        <div class="data_list_title">
                            <tr><td><a href="${pageContext.request.contextPath}/user/toLogin">游客你好！请先登陆</a></td></tr>

                        </div>
                    <%
                        }
                        else
                        {
                            out.println( "欢迎您! " + user );
                            out.println( "<a href = '/user/logout' >退出登陆</a>" );
                        }
                    %>
                </div>
                <div class="nickName">${blogger.nickname }</div>
                <div class="userSign">${blogger.sign }</div>
            </div>

            <div class="data_list">
                <div class="data_list_title">
                    <img src="${pageContext.request.contextPath}/static/images/byType_icon.png"/>
                    垃圾分类
                </div>
                <div class="datas">
                    <ul>
                        <c:forEach items="${blogTypeList }" var="blogType">
                            <li><span><a href="#">${blogType.typeName }（${blogType.blogCount }）</a></span></li>
                        </c:forEach>
                    </ul>
                </div>
            </div>




        </div>

        <div class="col-md-9">
            <div class="data_list">
                <div class="data_list_title">
                    <img src="${pageContext.request.contextPath}/static/images/list_icon.png"/>&nbsp;最新博客
                </div>
                <div class="datas">
                    <ul>

                        <li style="margin-bottom: 30px">
						  	<span class="title">
						  		<img alt="文章类型" src="${pageContext.request.contextPath}/static/userImages/yuan.jpg">
						  		<a href="#">这是一篇测试博客</a>
						  	</span>
                            <span class="summary">摘要: 这是用来测试的静态数据，为了多搞一点数据，于是我开始喋喋不休的说一些废话，包括我很帅之类的，虽然我一直强调自己要低调，但不知为何，自己的容颜非得和内心背道而驰....</span>
                            <span class="img">


						  	</span>
                            <span class="info">
						  		<font color="#999">2016-07-03 10:39</font> &nbsp;&nbsp;
						  		<font color="#33a5ba"><a href="#">阅读</a><font color="#999">(404)</font>&nbsp;&nbsp;</font>
						  		<font color="#33a5ba"><a href="#">评论</a><font color="#999">(8)</font>&nbsp;&nbsp;</font>
						  	</span>
                        </li>
                        <hr style="height:5px;border:none;border-top:1px dashed gray;padding-bottom:10px;" />

                        <li style="margin-bottom: 30px">
						  	<span class="title">
						  		<img alt="文章类型" src="${pageContext.request.contextPath}/static/userImages/yuan.jpg">
						  		<a href="#">这是一篇测试博客</a>
						  	</span>
                            <span class="summary">摘要: 这是用来测试的静态数据，为了多搞一点数据，于是我开始喋喋不休的说一些废话，包括我很帅之类的，虽然我一直强调自己要低调，但不知为何，自己的容颜非得和内心背道而驰....</span>
                            <span class="img">


						  	</span>
                            <span class="info">
						  		<font color="#999">2016-07-03 10:39</font> &nbsp;&nbsp;
						  		<font color="#33a5ba"><a href="#">阅读</a><font color="#999">(404)</font>&nbsp;&nbsp;</font>
						  		<font color="#33a5ba"><a href="#">评论</a><font color="#999">(8)</font>&nbsp;&nbsp;</font>
						  	</span>
                        </li>
                        <hr style="height:5px;border:none;border-top:1px dashed gray;padding-bottom:10px;" />

                        <li style="margin-bottom: 30px">
						  	<span class="title">
						  		<img alt="文章类型" src="${pageContext.request.contextPath}/static/userImages/yuan.jpg">
						  		<a href="#">这是一篇测试博客</a>
						  	</span>
                            <span class="summary">摘要: 这是用来测试的静态数据，为了多搞一点数据，于是我开始喋喋不休的说一些废话，包括我很帅之类的，虽然我一直强调自己要低调，但不知为何，自己的容颜非得和内心背道而驰....</span>
                            <span class="img">

						  	</span>
                            <span class="info">
						  		<font color="#999">2016-07-03 10:39</font> &nbsp;&nbsp;
						  		<font color="#33a5ba"><a href="#">阅读</a><font color="#999">(404)</font>&nbsp;&nbsp;</font>
						  		<font color="#33a5ba"><a href="#">评论</a><font color="#999">(8)</font>&nbsp;&nbsp;</font>
						  	</span>
                        </li>
                        <hr style="height:5px;border:none;border-top:1px dashed gray;padding-bottom:10px;" />
                    </ul>
                </div>
            </div>
        </div>

    </div>

    <div class="row">
        <div class="col-md-12" >
            <div class="footer" align="center" style="padding-top: 120px" >
                <font>Copyright © 2020-2022 收货郎 版权所有</font>

            </div>
        </div>
    </div>
</div>
</body>
</html>
