<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: sun
  Date: 2020/4/29
  Time: 9:09 上午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="/css1/bootstrap.min.css"  crossorigin="anonymous">

    <!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
    <link rel="stylesheet" href="/css1/bootstrap-theme.min.css"  crossorigin="anonymous">

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="/js1/bootstrap.min.js" crossorigin="anonymous"></script>
    <title>书籍页面</title>
</head>
<body>



<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <h3>
                书籍
            </h3>
            <table class="table">
                <thead>
                <tr>
                    <th>书名</th>
                    <th>数量</th>
                    <th>描述</th>
                    <th>价格</th>
                    <th>操作</th>
                </tr>
                </thead>
                
                <tbody>
                <c:forEach var="book" items="${books}">
                    <tr>
                        <td>${book.bookName}</td>
                        <td>${book.bookCounts}</td>
                        <td>${book.detail}</td>
                        <td>${book.price}</td>
                        <td><a href="${pageContext.request.contextPath}/commodity/SellOneBook?id=${book.bookID}">点击购买</a></td>
                        <td><a href="${pageContext.request.contextPath}/commodity/addCart?id=${book.bookID}">加入购物车</a></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

<a class="btn btn-default" href="${pageContext.request.contextPath}/commodity/toOrder" role="button">个人订单</a>
<a class="btn btn-default" href="${pageContext.request.contextPath}/commodity/tomain" role="button">返回主页</a>
</body>
</html>
