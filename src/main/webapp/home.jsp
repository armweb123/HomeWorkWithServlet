<%@ page import="com.model.User" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: ART
  Date: 25.02.2022
  Time: 21:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
</head>
<body>
<% User user = (User) request.getAttribute("user");
    List<User> allUsers = (List<User>) request.getAttribute("allUsers");
    if (user != null) {
%>
Welcome <%=user.getName()%> <%= user.getSurname()%><br>
<% } %>
All users
<table border="1">
    <tr>
        <td>Id</td>
        <td>Name</td>
        <td>Surname</td>
        <td>Email</td>
        <td>Delete</td>
    </tr>
    <% for (User currentUser : allUsers) { %>
    <tr>
        <td><%=currentUser.getId()%>
        </td>
        <td><%=currentUser.getName()%>
        </td>
        <td><%=currentUser.getSurname()%>
        </td>
        <td><%=currentUser.getEmail()%>
        </td>
        <td><a href="/removeUser?id=<%=currentUser.getId()%>">Delete</a></td>
    </tr>
    <% } %>
</table>
</body>
</html>
