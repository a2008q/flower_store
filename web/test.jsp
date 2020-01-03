<%--
  Created by IntelliJ IDEA.
  User: yi
  Date: 2019/12/25
  Time: 14:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <form action="Servlet" method="post">
    <input type="hidden" name="oper" value="reg">
    <h4>用户名：</h4><input type="text" name="phone" placeholder="请输入用户名">
    <h4>密码：</h4><input type="password" name="password" placeholder="请输入密码">
    <input type="submit">
  </form>
  <form action="Servlet" method="post">
    <input type="hidden" name="oper" value="login">
    <h4>用户名：</h4><input type="text" name="username" placeholder="用户名">
    <h4>密码：</h4><input type="text" name="password" placeholder="密码">
    <input type="submit">
  </form>
  <button></button>

  </body>
</html>
