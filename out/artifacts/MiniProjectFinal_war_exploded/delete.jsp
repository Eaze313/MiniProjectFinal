<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>

<html>
<head>
    <title>Delete Product</title>
    <link rel="stylesheet" href="styles.css" type="text/css>
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
            "DELETE FROM products\n" +
                    "WHERE ID='" +
                    request.getParameter("ID") +
                    "'");
%>
<h1>Product Deleted</h1>
The product (ID=<%= request.getParameter("Id") %>)
was deleted from the database.
<p>
    <a href="index.jsp">&leftarrow; Back to index</a>
    </p>
    </body>
</html>