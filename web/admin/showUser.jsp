<%@ page import="java.util.List" %>
<%@ page import="entity.Users" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: yi
  Date: 2020/1/2
  Time: 21:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
    <thead>
    <tr>
        <th>id</th>
        <th>手机号</th>
        <th>姓名</th>
        <th>年龄</th>
    </tr>
    </thead>
    <tbody>
    <%
        List<Users> usersList = (ArrayList<Users>)request.getAttribute("userList");
        for (Users user : usersList) {
    %>
    <tr>
        <td><%=user.getUid() %></td>
        <td><%=user.getPhone()%></td>
        <td><%=user.getName()%></td>
        <td><%=user.getAge()%></td>
    </tr>
    <%} %>
    </tbody>
</table>
</body>
</html>
