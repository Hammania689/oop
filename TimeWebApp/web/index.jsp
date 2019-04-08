<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: ham
  Date: 4/8/19
  Time: 5:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>TimePeiceApp</title>
  </head>
  <% Date date = new Date();%>
  <body>
  <h1> Today's Date</h1>
  <p>Today's Date: <%= date%></p>
  </body>
</html>
