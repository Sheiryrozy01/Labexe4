<%-- 
    Document   : AdminUpdateData
    Created on : May 27, 2022, 11:10:58 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.Connection" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        .top_nav{
            width: 100%;
            background-color: rgba(0, 0, 0, 0.3);
        }
        .nav{
            float: left;
            overflow: hidden;
        }
        .nav a{
            float: left;
            color: white;
            text-align: center;
            padding: 10px 12px;
            text-decoration: none;
            font-size: 17px;
        }
        .nav a:active{
            background-color: white;
            color: black;
        }
        .nav a:hover{
            background-color: white;
            color: black;
        }
        .center2{
            background-color: rgba(0,0,0,0,3);
            width: 800px;
            margin-left: auto;
            margin-right: auto;
        }
    </style>
    <body style="background: url('bg2.jpg'); background-size: cover"> 
        <table class="top_nav">
            <tr>
                <td class="nav">
                    <a href="AdminViewData.jsp">VIEW DATA</a>
                </td>
            </tr>
        </table>
        <%! String driverName = "com.mysql.jdbc.Driver";%>
        <%!String url = "jdbc:mysql://localhost:3306/labexe_4";%>
        <%!String user = "root";%>
        <%!String psw = "";%>
        <%

            String user_id = request.getParameter("user_id");
            String user_name = request.getParameter("user_name");
            String user_address = request.getParameter("user_address");
            String user_ic = request.getParameter("user_ic");
            String user_reason = request.getParameter("user_reason");
            String user_date = request.getParameter("user_date");
            String user_time = request.getParameter("user_time");
            String user_status = request.getParameter("user_status");
            

            if (user_id != null) {
                Connection con = null;
                PreparedStatement ps = null;
                int personID = Integer.parseInt(user_id);
                try {
                    Class.forName(driverName);
                    con = DriverManager.getConnection(url, user, psw);
                    String sql = "Update data set user_id=?,user_name=?,user_address=?,user_ic=?,user_reason=?,user_date=?,user_time=?,user_status=? where user_id=" + user_id;
                    ps = con.prepareStatement(sql);

                    ps.setString(1, user_id);
                    ps.setString(2, user_name);
                    ps.setString(3, user_address);
                    ps.setString(4, user_ic);
                    ps.setString(5, user_reason);
                    ps.setString(6, user_date);
                    ps.setString(7, user_time);
                    ps.setString(8, user_status);
                    int i = ps.executeUpdate();
                    if (i > 0) {
                        out.print("Record Updated Successfully");
                    } else {
                        out.print("There is a problem in updating Record.");
                    }
                } catch (SQLException sql) {
                    request.setAttribute("error", sql);
                    out.println(sql);
                }
            }
        %>
    </body>
</html>