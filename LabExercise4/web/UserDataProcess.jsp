<%-- 
    Document   : UserDataProcess
    Created on : May 27, 2022, 5:56:27 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Data process</title>
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
                    <a href="index.html">HOME</a>
                </td>
            </tr>
        </table>
        <%
            String user_name = request.getParameter("user_name");
            String user_address = request.getParameter("user_address");
            String user_ic = request.getParameter("user_ic");
            String user_reason = request.getParameter("user_reason");
            String user_date = request.getParameter("user_date");
            String user_time = request.getParameter("user_time");
            String user_status = request.getParameter("user_status");
            

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/labexe_4", "root", "");
                Statement st = conn.createStatement();
                
                int i = st.executeUpdate("insert into data(user_name,user_address,user_ic,user_reason,user_date,user_time,user_status)values('"+user_name+"','"+user_address+"','"+user_ic+"','"+user_reason+"','"+user_date+"','"+user_time+"','"+user_status+"')"); 
                out.println("data is successfully inserted");                                                                          
            } catch (Exception e) {
                System.out.print(e);
                e.printStackTrace();
                out.println(e);

            }
        %>
    </body>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</html>