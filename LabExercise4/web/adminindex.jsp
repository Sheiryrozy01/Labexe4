<%-- 
    Document   : adminindex
    Created on : May 31, 2022, 10:19:11 PM
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
        <h1>You have successfully logged in as admin</h1>
        <%= request.getRemoteUser()%><%--RETURN NULL--%>
        <%
            if (request.isUserInRole("administrator")) {
                response.sendRedirect("AdminViewData.jsp");
            } else{
                response.sendRedirect("error_page.jsp");
            }
        %>
    </body>
</html>