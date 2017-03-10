<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add New Product</title>
    <link rel="stylesheet" href="styles.css" type="text/css>
<head>
<body>
    <form name="Product" action="UpdateProduct.jsp"
    method="post">
    ID:
    <input name="ID" type="text"
           maxlength="5" size="5"><br>
    Product:
    <input name="Product" type="text" value=<%= request.getParameter("Product")%>
           maxlength="40" size="40s"><br>
    Category:
    <input name="Catagory" type="text" value="<%= request.getParameter("Category")%>"
           maxlength="40" size="40s"><br>
    Price:
    <input name="Price" type="number" value="<%= request.getParameter("Price")%>"
           maxlength="40" size="40s"><br>
    Decription:
    <input name="Description" type="text" value="<%= request.getParameter("Description")%>"
           maxlength="40" size="40s"><br>
    Photo:
    <input name="Photo" type="image" value="<%= request.getParameter("Photo")%>"
           maxlength="255" size="255s"><br>
    <input type="submit" value="Add Product">
    </form>
    </body>
