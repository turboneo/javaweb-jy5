<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: TurboNeo
  Date: 2019/8/6
  Time: 17:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户列表</title>
</head>
<body>
<table>
    <tr>
        <th>ID</th>
        <th>用户名</th>
        <th>密码</th>
        <th>电话</th>
        <th>账户类型</th>
        <th>状态</th>
        <th>操作</th>
    </tr>
    <c:forEach items="${uli.data}" var="us">
        <tr>
            <td>${us.id}</td>
            <td>${us.uname}</td>
            <td>${us.psd}</td>
            <td>${us.type}</td>
            <td>${us.stats}</td>
            <td><a href="">编辑</a></td>
            <td><a href="">删除</a></td>
            <td><a href="/manage/user/disableuser.do?uid=${us.id}">禁用</a></td>
        </tr>

    </c:forEach>
</table>

</body>
</html>
