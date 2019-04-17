<%--
  Created by IntelliJ IDEA.
  User: ham
  Date: 4/10/19
  Time: 5:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title> Creating Web Forms</title>
  </head>
  <body>
  <h1>Project 9 Web Form</h1>
  <form action="display.jsp" method="post">


      <table>
        <tr>
          <td> Student First Name: </td>
          <td><input type="text" name="First" ></td>
        </tr>
         <tr>
          <td>Student Middle Name: </td>
          <td><input type="text" name="Middle" ></td>
        </tr>

        <tr>
          <td>Student Last Name: </td>
          <td><input type="text" name="Last" ></td>
        </tr>

        <tr>
          <td>Student Phone Number: </td>
          <td><input type="text" name="Phone" ></td>
        </tr>

         <tr>
          <td>Home Town: </td>
          <td><input type="text" name="HomeTown" ></td>
        </tr>

         <tr>
          <td>High School Attended: </td>
          <td><input type="text" name="HighSchool"></td>
        </tr>
        <tr>
          <td>Year of High School Completion: </td>
          <td><input type="text" name="YearGrad" ></td>
        </tr>
      </table>
    <input type="submit" value="Submit" name="submit">
    <input type="reset" value="Clear" name="clear">
  </form>
  </body>
</html>
