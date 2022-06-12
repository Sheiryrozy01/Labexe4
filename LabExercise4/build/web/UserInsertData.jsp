<%-- 
    Document   : UserInsertData
    Created on : May 27, 2022, 5:30:05 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <style>
        body {font-family: Arial, Helvetica, sans-serif;}
        * {box-sizing: border-box}

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

        .cancelbtn {
            padding: 14px 20px;
            background-color: #f44336;
        }

        .cancelbtn, .signupbtn {
            float: left;
            width: 50%;
        }

        .container {
            padding: 16px;
        }

        .clearfix::after {
            content: "";
            clear: both;
            display: table;
        }

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
    
    <script>
        function verify(){
            if(document.form1.user_name.value.length === 0){
                alert("Please Enter Name");
                return(false);
            }
            if(document.form1.user_address.value.length === 0){
                alert("Please Enter Address");
                return(false);
            }
            if(document.form1.user_ic.value.length === 0){
                alert("Please Enter Identification Number");
                return(false);
            }
            if(document.form1.user_reason.value.length === 0){
                alert("Please Enter The Reason");
                return(false);
            }
            if(document.form1.user_date.value.length === 0){
                alert("Please Enter The Date");
                return(false);
            }
            if(document.form1.user_time.value.length === 0){
                alert("Please Enter The time");
                return(false);
            }
        }
    </script>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert Staff Information</title>
    </head>
    <body style="background: url('bg2.jpg'); background-size: cover">
        <table class="top_nav">
            <tr>
                <td class="nav">
                    <a href="index.html">HOME</a>
                </td>
            </tr>
        </table>
        <form name="form1" method="POST" action="UserDataProcess.jsp">
            <div class="container">
                <p><h2> REGISTRATION SYSTEM</h2></p>
                <hr>
                <br>
                <br>
                <label style="color:black" for="user_name"><b><h2>Name :</h2></b></label>
                <input type="text" placeholder="Please Enter Name" name="user_name" >
                
                <label style="color:black" for="user_address"><b><h2>Address :</h2></b></label>
                <input type="text" placeholder="Please Enter Address" name="user_address" >
                
                <label style="color:black" for="user_ic"><b><h2>Identification Number :</h2></b></label>
                <input type="text" placeholder="Please Enter Identification Number" name="user_ic" >
                
                <label style="color:black" for="user_reason"><b><h2>Reason :</h2></b></label>
                <input type="text" placeholder="Please Enter The Reason" name="user_reason" >
                
                <div
                    class="mb-3" align="left"> <label class="form-label"><b><h2>Date :</h2></b></label>
                    <input type="date" class="form-control" name="user_date" required>
                </div>
                
                <div
                    class="mb-3" align="left"> <label class="form-label"><b><h2>Time :</h2></b></label>
                    <input type="time" class="form-control" name="user_time" required>
                </div>
                
                <div class="clearfix">

                    <td colspan="3">
                        <button type="submit" onclick="return(verify())">Submit</button>

                    </td>
                </div>
            </div>
        </form>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>
