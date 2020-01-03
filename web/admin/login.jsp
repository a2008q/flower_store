<%--
  Created by IntelliJ IDEA.
  User: yi
  Date: 2020/1/1
  Time: 21:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <base href="<%=basePath%>">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="../css/adminstyle.css"/>
    <title>Document</title>
</head>
<body>
<div class="container">
    <%
        Object obj = request.getAttribute("flag");
        if (obj == "false") {
    %>
    <span style="font-size: 18px">用户名或者密码错误</span>
    <%} %>
    <form action="/Servlet" class="login-form">
        <h2>登录</h2>
        <input type="hidden" name="oper" value="adminlogin">
        <input type="hidden" name="oper" value="show">
        <input type="text" name="phone" placeholder="用户名">
        <input type="password" name="password" placeholder="密码">
        <button type="submit">登录</button>
    </form>
</div>
</body>
</html>