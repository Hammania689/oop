<%--
  Created by IntelliJ IDEA.

  Date: 4/24/19
  Time: 4:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Saving Data to a Text File</title>
  </head>
  <body>
  <form action="display.jsp" method="post">
    <table>
      <tr>
        <td> First Name: </td>
        <td><input type="text" name="First" ></td>
      </tr>
      <tr>
        <td>Last Name: </td>
        <td><input type="text" name="Last" ></td>
      </tr>

      <tr>
        <td>Email: </td>
        <td><input type="text" name="Email" value="0" ></td>
      </tr>

      <tr>
        <td>Gender </td>
        <td>Male<input type="radio" name="Gender" value="Male" ></td>
        <td>Female<input type="radio" name="Gender" value="Female" ></td>
      </tr>

      <tr>
        <td>Martial Status </td>
        <td>
          <select name="Status">
            <option>Single as a Pringle</option>
            <option>Married and locked down</option>
            <option>Partner. I hate it but it gets the bills payed</option>
            </select>
        </td>
      </tr>
    </table>
    <input type="submit" value="Submit" name="submit">
    <input type="reset" value="Clear" name="clear">
  </form>
  </body>
</html>
