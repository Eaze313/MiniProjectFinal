<%--
  Created by IntelliJ IDEA.
  User: paperspace
  Date: 3/9/2017
  Time: 6:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<html>

<head>
    <title>Update Product</title>
</head>
<body>
<%
    //you need this for JDBC with MySQL in version 5
    //even though you're not supposed to
    Class.forName("com.mysql.jdbc.Driver");
    Connection connection = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/gcsnacks",
            "jdbc",
            "java1234");
    Statement statement = connection.createStatement();
    int result = statement.executeUpdate(
            "UPDATE products\n" + " " + "SET\n" +
                    "Product='" + request.getParameter("Product") + "'," +
                    "Category='" + request.getParameter("Category") + "'," +
                    "Price='" + request.getParameter("Price") + "'," +
                    "Description='" + request.getParameter("Description") + "'," +
                    "Photo='" + request.getParameter("Photo") + "'" +
                    "WHERE ProductID='" + request.getParameter("ID") + "'\n"
    );
%>
<h1>Update Confirmed <%= request.getParameter("Product") %>
</h1>
Category: <%= request.getParameter("Category") %><br>
Price: <%= request.getParameter("Price") %><br>
Description: <%= request.getParameter("Description") %><br>
Photo: <%= request.getParameter("Photo") %><br>
<p>
    <a href="#" onclick="window.history.back()">&leftarrow; Change Update</a>
</p>
<p>
    <a href="index.jsp">&leftarrow; Back to index</a>
</p>

</body>
</html>
