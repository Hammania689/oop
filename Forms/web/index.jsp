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
  <h1>Introduction to Web Forms</h1>
  <form action="display.jsp" method="post">
      <table>
        <tr>
          <td> First Name: </td>
          <td><input type="text" name="First" value="0"></td>
        </tr>
        <tr>
          <td>Last Name: </td>
          <td><input type="text" name="Last" value="0"></td>
        </tr>

        <tr>
          <td>Email: </td>
          <td><input type="email" name="Email" value="0"></td>
        </tr>

        <tr>
          <td>Gender: </td>
          <td>
            <select  name="Gender">
              <option value="Bush">Bush</option>
              <option value="Shrub">Shrub</option>
              <option value="Dirt">Dirt</option>
            </select>
          </td>
        </tr>

        <tr>
          <td>Date of Birth: </td>
          <td><input type="text" name="Date" value="MM/DD/YYYY"></td>
        </tr>
      </table>
    <input type="submit" value="Submit" name="submit">
    <input type="reset" value="Clear" name="clear">
  </form>
  </body>
</html>
