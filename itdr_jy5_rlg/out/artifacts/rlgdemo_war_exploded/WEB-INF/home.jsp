<%--
  Created by IntelliJ IDEA.
  User: TurboNeo
  Date: 2019/8/6
  Time: 11:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@ page import="com.idtr.pojo.Users" %>
<html>
<head>
    <title>睿乐购后台管理系统</title>
    <%--<link rel="stylesheet" href="../css/home.css">--%>
</head>
<body>
<div>
<span>欢迎您：${user.uname}</span>
</div>
<ul>
    <li><a href="/manage/user/list.do">用户列表</a></li>
    <li><a href="/manage/product/list.do">商品列表</a></li>
    <li><a href="/manage/order/list.do">订单列表</a></li>
</ul>

    </div>
</div>










</body>
</html>
