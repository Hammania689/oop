<%@ page import="java.io.File" %>
<%@ page import="java.io.Writer" %>
<%@ page import="java.io.BufferedWriter" %>
<%@ page import="java.io.FileWriter" %><%--
  Created by IntelliJ IDEA.
  User: ham
  Date: 4/24/19
  Time: 5:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
String firstName = request.getParameter("First");
String lastName = request.getParameter("Last");
String gender = request.getParameter("Gender");
String status = request.getParameter("Status");
String email = request.getParameter("Email");

String strPath = "/home/ham/Documents/DataFile.txt";
File strFile = new File(strPath);
boolean fileCreated = strFile.createNewFile();
Writer objectWriter = new BufferedWriter(new FileWriter(strFile));
String newLine = System.getProperty("line.separator");
objectWriter.write(firstName + newLine + lastName + newLine + gender + newLine + status + newLine + email);
objectWriter.flush();
objectWriter.close();
%>

<table>
    <tr>
        <td> Student First Name: </td>

        <td>
            <%=firstName%>
        </td>
    </tr>

    <tr>
        <td>Student Last Name: </td>
        <td>

            <%= lastName%>
        </td>
    </tr>

    <tr>
        <td>Gender: </td>
        <td>
            <%= gender %>

        </td>
    </tr>

    <tr>
        <td>Status: </td>

        <td>

            <%= status%>
        </td>
    </tr>

    <tr>
        <td>Email: </td>
        <td>

            <%=email%>
        </td>
    </tr>
</table>

</body>
</html>
