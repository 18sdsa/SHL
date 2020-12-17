<%--
  Created by IntelliJ IDEA.
  User: sun
  Date: 2020/4/29
  Time: 9:43 上午
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>衣服页面</title>
</head>
<body>

<table>
    <thead>
    <tr>
        <th>名称</th>
        <th>数量</th>
    </tr>
    </thead>

    <tbody>
    <c:forEach var="clothes" items="${clothes}">
        <tr>
            <td>${clothes.name}</td>
            <td>${clothes.price}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>


</body>
</html>
