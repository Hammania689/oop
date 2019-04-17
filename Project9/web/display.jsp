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
<h1>University of Southern Mississippi Student Form</h1>
<%
    String firstName = request.getParameter("First");
    String middleName = request.getParameter("Middle");
    String lastName = request.getParameter("Last");
    String phone = request.getParameter("Phone");
    String home = request.getParameter("HomeTown");
    String highSchool = request.getParameter("HighSchool");
    String yearGrad = request.getParameter("YearGrad");
%>

<table>
        <tr>
            <td> Student First Name: </td>

            <td>
            <%=firstName%>
            </td>
        </tr>
        <tr>
            <td>Student Middle Name: </td>
            <td>
            <%= middleName %>

            </td>
        </tr>

        <tr>
            <td>Student Last Name: </td>
            <td>

            <%= lastName%>
            </td>
        </tr>

        <tr>
            <td>Student Phone Number: </td>

            <td>

            <%= phone%>
            </td>
        </tr>

        <tr>
            <td>Home Town: </td>
            <td>

            <%=home%>
            </td>
        </tr>

        <tr>
            <td>High School Attended: </td>

            <td>

            <%=highSchool%>
            </td>
        </tr>
        <tr>
            <td>Year of High School Completion: </td>
            <td>

            <%=yearGrad%>
            </td>
        </tr>
</table>
</body>
</html>
