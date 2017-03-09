<%--
  Created by IntelliJ IDEA.
  User: paperspace
  Date: 3/9/2017
  Time: 10:26 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<html>
<head>
    <title>Product List</title>
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
    ResultSet resultset = statement.executeQuery("select pname , category, price, photo from products");
%>

<table style="width:100%">
    <table border="1">
        <tr>
            <th>Name</th>
            <th>Category</th>
            <th>>Price</th>
            <th>Photo</th>
        </tr>
        <% while(resultset != null && resultset.next()){ %>
        <TR>
    <td> <%= resultset.getString(1) %></td>
    <td> <%= resultset.getString(2) %></td>
    <td> <%= resultset.getString(3) %></td>
    <td> <%= resultset.getString(4) %></td>
        </TR>

        <% }
            if (resultset != null) {
                resultset.close();
            }
            if (statement != null) {
                statement.close();
            }
            if (connection != null) {
                connection.close();
            }
        %>
    </table>

</body>
</html>
