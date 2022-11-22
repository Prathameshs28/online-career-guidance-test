<%-- 
    Document   : Admin_pannel
    Created on : Dec 3, 2019, 8:05:27 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin pannel</title>
     <style>
            body{
	margin:0;
	padding:0;
	font-family: sans-serif;
	background-image: url("Save.jpg");
        background-size: cover;
}
.box{
	width: 300px;
        height: 300px;
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
input[type="submit"]{
	border: 0;
        width:150px;
	background:none;
	display:list-item;
	margin:10px auto;
	text-align:center;
	border:2px solid #2ecc71;
	padding: 14px 20px;
	outline: none;
	color:white;
	border-radius:24px;
	transition: 0.25s;
	cursor: pointer;
}
input[type="submit"]:hover{
	background:#2ecc71;
}
        </style>
    </head>
    <body>
        
        <script src="validation.js"></script><br>
        <a href="A_HomePage.jsp">
        <input type="submit" value="Back" style="float: right;"></a>
        <form class="box" action="Admin_Pannel" name="Admin_Pannel" method="post">
	<h1>Admin Panel</h1>
        <input type="submit" name="text_name" value="View_User_Details">
        <input type="submit" name="text_name" value="View_Payment_Details">
        <input type="submit" name="text_name" value="View_Student_Result">   
        <input type="submit" name="text_name" value="View_Feedback">       
        </form>       
    </body>
</html>

