<%-- 
    Document   : AdminViewData
    Created on : May 27, 2022, 10:59:30 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.Connection" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Data</title>
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
            color:white;
            text-align: center;
            padding: 10px 12px;
            text-decoration: none;
            font-size: 17px;
        }

        .nav a:hover{
            background-color: white;
            color: black;
        }
        .nav a:active{
            background-color: white;
            color: black;
        }
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
    
    <body>
        <%
            String driver = "com.mysql.jdbc.Driver";
            String connectionUrl = "jdbc:mysql://localhost:3306/";
            String database = "labexe_4";
            String userid = "root";
            String password = "";

            try {
                Class.forName(driver);
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
                out.println(e);
            }
            Connection connection = null;
            Statement statement = null;
            ResultSet resultSet = null;

        %>
    </body>
</html>

<html>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <body style="background: url('bg2.jpg'); background-size: cover">
        <table class="top_nav">
            <tr>
                <td class="nav">
                    <a href="index.html">HOME</a> 
                </td>
            </tr>
        </table>
        <br>
        <br>
        <br><br>
        <h1 align="center"> <% out.print("Today is : " + java.util.Calendar.getInstance().getTime()); %> </h1> 
        <br>
        <h1 align="center" style="color:red">USER DATA</h1>
        
        
        <table border="1" class="table table-dark table-hover w-50 " align="center">
                                                    
            <tr align="center">
                
                 <td>ID</td>
                <td>Name</td>
                <td>Address</td>
                <td>IC</td>
                <td>Reasons</td>
                <td>Date</td>
                <td>Time</td>
                <td>Status</td>
                <td>Action</td>
                
            </tr>

            <%                try {
                    connection = DriverManager.getConnection(connectionUrl + database, userid, password);
                    statement = connection.createStatement();
                    String sql = "select * from data";
                    resultSet = statement.executeQuery(sql);
                    while (resultSet.next()) {
            %>
            <tr align="center">
                <td><%=resultSet.getString("user_id")%></td>
                <td><%=resultSet.getString("user_name")%></td>
                <td><%=resultSet.getString("user_address")%></td>
                <td><%=resultSet.getString("user_ic")%></td>
                <td><%=resultSet.getString("user_reason")%></td>
                <td><%=resultSet.getString("user_date")%></td>
                <td><%=resultSet.getString("user_time")%></td>
                <td><%=resultSet.getString("user_status")%></td>
                
                <td>
                <a href="AdminEditData.jsp?user_id=<%=resultSet.getString("user_id")%>"><button class="btn btn-outline-light">Edit</button>
                <a href="AdminDeleteData.jsp?user_id=<%=resultSet.getString("user_id")%>"><button class="btn btn-outline-light">Delete</button>
                </td>
            </tr>
            <%
                    }
                    connection.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            %>
        </table>
    </body>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>


