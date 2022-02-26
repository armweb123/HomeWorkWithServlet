<%--
  Created by IntelliJ IDEA.
  User: ART
  Date: 25.02.2022
  Time: 20:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<% if (request.getAttribute("msg")!= null){ %>
<p style="color:red;"><%= request.getAttribute("msg")%></p>
<%
}%>
<form action="/login" method="post">
    Email: <input type="text" name="email">
    Password: <input type="text" name="password">
    <input type="submit" value="login">
</form>
</body>
</html>
