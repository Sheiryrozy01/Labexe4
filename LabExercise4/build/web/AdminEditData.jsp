<%-- 
    Document   : AdminEditData
    Created on : May 27, 2022, 9:12:39 PM
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
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String id = request.getParameter("user_id");
            String driver = "com.mysql.jdbc.Driver";
            String connectionUrl = "jdbc:mysql://localhost:3306/";
            String database = "labexe_4";
            String userid = "root";
            String password = "";

            try {
                Class.forName(driver);
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }

            Connection connection = null;
            Statement statement = null;
            ResultSet resultSet = null;
        %>
        <%
            try {
                connection = DriverManager.getConnection(connectionUrl + database, userid, password);
                statement = connection.createStatement();
                String sql = "select * from data where user_id=" + id;
                resultSet = statement.executeQuery(sql);
                while (resultSet.next()) {

        %>
    </body>
</html>

<html>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <style>
        body {font-family: Arial, Helvetica, sans-serif;}
        * {box-sizing: border-box}


        /* Full-width input fields */
        input[type=text], input[type=password] {
            width: 100%;
            padding: 15px;
            margin: 5px 0 22px 0;
            display: inline-block;
            border: none;
            background: #f1f1f1;
        }

        input[type=text]:focus, input[type=password]:focus {
            background-color: #ddd;
            outline: none;
        }

        hr {
            border: 1px solid #f1f1f1;
            margin-bottom: 25px;
        }

        /* Set a style for all buttons */
        button {
            background-color: #34495E;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
            opacity: 0.9;
        }

        button:hover {
            opacity:1;
        }

        /* Extra styles for the cancel button */
        .cancelbtn {
            padding: 14px 20px;
            background-color: #f44336;
        }

        /* Float cancel and signup buttons and add an equal width */
        .cancelbtn, .signupbtn {
            float: left;
            width: 50%;
        }

        /* Add padding to container elements */
        .container {
            padding: 16px;
        }

        /* Clear floats */
        .clearfix::after {
            content: "";
            clear: both;
            display: table;
        }

        /* Change styles for cancel button and signup button on extra small screens */
        @media screen and (max-width: 300px) {
            .cancelbtn, .signupbtn {
                width: 100%;
            }

            td, th{border: opx solid #ddd; text-align: left;}
            table {border-collapse: collapse; width: 24.5%; border-style:solid;
                   border-width: 2px; border-color: appworkspace;}
            th, td{padding: 5px;}
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

    <body style="background: url('bg2.jpg'); background-size: cover"> 
        <table class="top_nav">
            <tr>
                <td class="nav">
                    <a href="AdminViewData.jsp">VIEW DATA</a>
                </td>
            </tr>
        </table>
        <br>
        <br>
        <h1 align="center" >Update data form database in jsp</h1>
        <form method="post" action="AdminUpdateData.jsp">
            <input type="hidden" name="user_id" value="<%=resultSet.getString("user_id")%>">
            <div class="container">
                <hr>
                <br>
                <br>
                <label style="color:black" for="user_name"><b><h2>Name :</h2></b></label>
                <input type="text" placeholder="Please Enter Name" name="user_name" value="<%=resultSet.getString("user_name")%>"  >

                <label style="color:black" for="user_address"><b><h2>Address :</h2></b></label>
                <input type="text" placeholder="Please Enter Address" name="user_address" value="<%=resultSet.getString("user_address")%>"  >

                <label style="color:black" for="user_ic"><b><h2>Identification Number :</h2></b></label>
                <input type="text" placeholder="Please Enter Identification Number" name="user_ic" value="<%=resultSet.getString("user_ic")%>"  >

                <label style="color:black" for="user_reason"><b><h2>Reason :</h2></b></label>
                <input type="text" placeholder="Please Enter The Reason" name="user_reason" value="<%=resultSet.getString("user_reason")%>" >

                <label style="color:black" for="user_date"><b><h2>Date :</h2></b></label>
                <input type="text" placeholder="Please Enter The Date" name="user_date" value="<%=resultSet.getString("user_date")%>" >

                <label style="color:black" for="user_time"><b><h2>Time :</h2></b></label>
                <input type="text" placeholder="Please Enter The Time" name="user_time" value="<%=resultSet.getString("user_time")%>" >

                <br>
                <label class="form-label" for="user_status"><b>STATUS</b></label>
                <br>
                <div class="mb-3" align="left">
                    <select class="form-select" name="user_status" value="<%=resultSet.getString("user_status")%>" >
                        <option selected value="">CHOOSE..</option>
                        <option value="approved">APPROVED</option>
                        <option value="declined">DECLINED</option>
                    </select>
                </div>
                <br>
                <br>

                <br>
                <div class="clearfix">

                    <td colspan="3">
                        <button type="submit">Submit</button>

                    </td>
                </div>
            </div>
        </form>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <%
                }
                connection.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>    
    </body>
</html>
