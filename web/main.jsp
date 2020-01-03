<%--
  Created by IntelliJ IDEA.
  User: yi
  Date: 2019/12/27
  Time: 13:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="entity.Users" %>
<html>
<head>
    <title>Title</title>
    <script language="JavaScript" src="js/jquery-3.4.1.min.js"></script>
    <style>
        .loginbox {
            margin: 100px auto;
            width: 300px;
            height: 100px;
        }
    </style>
</head>
<body>
<div class="loginbox">
    <form action="Servlet" method="post">
        <input type="hidden" name="oper" value="adminlogin"/>
        <ul>
            <li><input name="phone" type="text"  placeholder="用户名"/></li>
            <li><input name="password" type="password"  placeholder="密码"/></li>
            <li><input name="" type="submit"  value="登录"/>
        </ul>
    </form>
</div>
</body>
</html>
