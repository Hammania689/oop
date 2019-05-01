<%@ page import="java.io.File" %>
<%@ page import="java.io.Writer" %>
<%@ page import="java.io.BufferedWriter" %>
<%@ page import="java.io.FileWriter" %>
<%@ page import="java.io.FileReader" %>
<%@ page import="java.io.BufferedReader" %><%--
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
String strPath = "/home/ham/Documents/DataFile.txt";
File strFile = new File(strPath);

BufferedReader reader = new BufferedReader(new FileReader(strFile));
String line;
%>

<table>
    <tr>
        <%--<td> First Name </td>--%>
        <%--<td> Last Name </td>--%>
        <%--<td> Email </td>--%>
        <%--<td> Gender </td>--%>
        <%--<td> Status </td>--%>


            <td> First  </td>
            <td> Middle </td>
            <td> Last </td>
            <td> Former </td>
            <td> Preferred </td>
            <td> Suffix </td>
            <td> HomePhone </td>
            <td> Cell </td>
            <td> Email </td>
            <td> DOB </td>
            <td> Gender </td>
            <td> State </td>
            <td> Zip </td>
            <td> Country </td>
            <td> Military </td>
            <td> CFirst </td>
            <td> CLast </td>
            <td> CEmail </td>
            <td> GPA </td>
            <td> GPAScale </td>
            <td> Campus </td>
            <td> Felony </td>
            <td> Suspension </td>
            <td> LORWaiver </td>
            <td> Agree      </td>
    </tr>

    <tr>
        <%
        while((line = reader.readLine()) != null){ %>
        <td><%=line %></td>
        <%
        }

        %>
    </tr>

</table>

</body>
</html>
