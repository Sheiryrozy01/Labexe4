<%-- 
    Document   : error_page
    Created on : May 27, 2022, 4:54:32 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"rel="stylesheet" integrity="sha384- 1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <head>
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
            .center2 {
                background-color: rgba(0, 0, 0, 0.3);
                width: 800px;
                margin-left: auto;
                margin-right: auto;
            }
            *{
                transition: all 0.6s;
            }

            html {
                height: 100%;
            }

            body{
                font-family: 'Lato', sans-serif;
                color: #888;
                margin: 0;
            }

            #main{
                display: table;
                width: 100%;
                height: 100vh;
                text-align: center;
            }

            .fof{
                display: table-cell;
                vertical-align: middle;
            }

            .fof h1{
                font-size: 50px;
                display: inline-block;
                padding-right: 12px;
                animation: type .5s alternate infinite;
            }

            @keyframes type{
                from{box-shadow: inset -3px 0px 0px #888;}
                to{box-shadow: inset -3px 0px 0px transparent;}
            }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-color: silver">
        <div id="main">
                <div class="fof">
                    <h1>Error 404</h1>
                </div>
            </div>
        <table class="top_nav">
            <tr>
                <td class="nav">
                    <a href="adminindex.jsp">Click to go Login Page</a>
                </td>
            </tr>
            <br>
            
    </body>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script> </body>

</html>
