<%-- 
    Document   : Admin_Login
    Created on : Dec 27, 2019, 5:25:38 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login</title>
        <link rel="Stylesheet" href="bootstrap.css">
         <style>
             *
             {
               margin:0;
	padding:0;  
             }
            body{
	
	font-family: sans-serif;
	background-image: url("Save.jpg");
        background-size: cover;
        
}
.box{
	width: 400px;
        height: 330px;
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
                text-shadow: 2px 3px 2px blue;
            }
        </style>
    </head>
    <body>
        <script src="validation.js"></script>        
        <form class="box" action="Admin_Login" name="Admin_Login"method="post">
	<h1>Admin Login</h1>
        <input type="text" name="text_name"  placeholder="User Name" onkeypress="javascript:return isString(event)">
        <input type="password" name="text_password"  placeholder="password">
	<input type="submit" name="rgister" value="Login">
     
        
        </form>       
    </body>
        
</html>