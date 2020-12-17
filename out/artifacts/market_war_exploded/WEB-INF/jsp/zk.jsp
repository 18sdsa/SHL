<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2020/12/6
  Time: 10:15 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>废纸壳</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/commodity/release_zk">
    <table>
        <tr>
            <td>我要回收
                <select name="zhonglei">
                    <option value="zk">纸壳</option>
                    <option value="yf">衣服</option>
                    <option value="pz">瓶子</option>
                </select>
            </td>

            <td>您的电话</td>
            <td><input type="text" name="seller_number"></td>

            <td><input type="submit" value="提交"></td>
        </tr>
    </table>
</form>
</body>
</html>
