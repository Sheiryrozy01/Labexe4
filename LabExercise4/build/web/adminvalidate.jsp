<%-- 
    Document   : adminvalidate
    Created on : May 30, 2022, 9:45:20 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>You have successfully logged in</h1>
        <%= request.getRemoteUser() %>
        <a href="logout.jsp">Click here to view all user data </a>
    </body>
</html>
