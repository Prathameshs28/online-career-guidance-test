<%-- 
        Document   : second
    Created on : Nov 16, 2019, 11:21:29 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Second Page</title>
        <link rel="Stylesheet" href="bootstrap.css">
        <style>
                       body{
	margin:0;
	padding:0;
	font-family: sans-serif;
	background-image: url("Save.jpg");
        background-size: cover;
        
}
.box{
	width: 400px;
        height: 350px;
	padding: 40px ;
	position: absolute;
	top:50%;
	left: 50%;
	transform: translate(-50%,-50%);
	background:#191919;
	text-align: center;
        border-radius: 30px;
}
.box h1{
	color: red;
	text-transform: uppercase;
	font-weight: 500;
}
.box input[type="text"]{
	border: 0;
	background:none;
	display:block;
	margin:20px auto;
	text-align:center;
	border:2px solid #3498bd;
	padding: 14px 10px;
	width:300px;
	outline: none;
	color:white;
	border-radius: 24px;
	transition: 0.25s;
}
.box input[type="password"]{
        border: 0;
	background:none;
	display:block;
	margin:20px auto;
	text-align:center;
	border:2px solid #3498bd;
	padding: 14px 10px;
	width:300px;
	outline: none;
	color:white;
	border-radius: 24px;
	transition: 0.25s;   
}
.box input[type="text"]:focus{
	width:280px;
	border-color:#2ecc71;
}
.box input[type="password"]:focus{
       width:280px;
       border-color:#2ecc71;
}
.box input[type="submit"]{
	border: 0;
        width:200px;
	background:none;
	display:block;
	margin:10px auto;
	text-align:center;
	border:2px solid #2ecc71;
	padding: 14px 40px;
	outline: none;
	color:white;
	border-radius:24px;
	transition: 0.25s;
	cursor: pointer;
}
.box input[type="submit"]:hover{
	background:#2ecc71;
}
h1{
                text-shadow: 2px 7px 2px blue;
            }
        </style>
    </head>
    <body>
        <form class="box" name="sencond_page " action="sencond_page" method="post">
	<h1>Login</h1>
        <br>
	<input type="submit" name="AdminLogin" value="Admin Login"><br>
       <input type="submit" name="AdminLogin" value="User Login">
         </form>
    </body>
</html>
