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
    <title>订单界面</title>
</head>
<body>

<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <h3>
                订单
            </h3>
            <table class="table">
                <thead>
                <tr>
                    <th>订单信息</th>
                    <th>价格</th>
                    <th>买家</th>
                </tr>
                </thead>


                <tbody>
                <c:forEach var="order" items="${orders}">
                    <tr>
                        <td>${order.infor}</td>
                        <td>${order.price}</td>
                        <td>${order.username}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

</body>
</html>
