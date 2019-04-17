<%--
  Created by IntelliJ IDEA.
  User: ham
  Date: 4/10/19
  Time: 5:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Creating Web Forms</title>
</head>
<body>
<h1>Introduction to Web Forms</h1>
<%
    String firstName = request.getParameter("First");
    String lastName = request.getParameter("Last");
    String email = request.getParameter("Email");
    String DOB = request.getParameter("Date");
    String gender = request.getParameter("Gender");
%>

<table>
    <tr>
        <td> First Name: </td>
        <td><%= firstName %></td>
    </tr>
    <tr>
        <td>Last Name: </td>
        <td><%= lastName %></td>
    </tr>

    <tr>
        <td>Email: </td>
        <td><%= email%></td>
    </tr>
    </tr>

    <tr>
        <td>Gender: </td>
        <td><%= gender %></td>
    </tr>
    </tr>

    <tr>
        <td>Date of Birth: </td>
        <td><%= DOB %></td>
    </tr>
    </tr>
</table>
</body>
</html>
