<%--
  Created by IntelliJ IDEA.
  User: paperspace
  Date: 3/9/2017
  Time: 2:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<html>
<head>
    <title>Product Detail</title>
</head>
<body>
<%
    //you need this for JDBC with MySQL in version 5
    //even though youre not supposed to
    Class.forName("com.mysql.jdbc.Driver");
    Connection connection = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/gcsnacks",
            "jdbc",
            "java1234");
    Statement statement = connection.createStatement();
    ResultSet resultset = statement.executeQuery("select * from products where ID='" +
            request.getParameter("ID") + "'");
    resultset.next();
%>

<h1><%= resultset.getString(2) %></h1>

<img src="<%= resultset.getString(6) %>"> <br>

Price: <%= resultset.getString(4) %> <br>

Details: <%= resultset.getString(5) %> 
</body>
</html>
