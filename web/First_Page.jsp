<%-- 
    Document   : First_Page
    Created on : Nov 15, 2019, 11:00:53 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="Stylesheet" href="bootstrap.css">
        <title>First Page</title>
        <style>
            *{
             margin: 0;
             padding: 0;
           
             
            }
            body{
                    background-image: url("First_Page.jpg");
                    background-repeat: no-repeat;
                    background-size: cover;
                    background-position: center;    
              }
            h1 {
                    position: absolute;
                    left: 50px;
                    right: 50px;
                    top: 100px;
                    text-shadow: 2px 2px 2px blue;                    
                    font: italic bold 70px/70px Georgia, serif;
               }
               .box input[type="submit"]{
                   background-color: green;
                   
	border: 0;
        width:200px;
	display:block;
	margin:10px auto;
        font-size:15px;
	text-align:center;
	border:2px solid black;
	padding: 15px 40px;
	outline: none;
	color:white;
        border-radius:24px;
	transition: 0.25s;
	cursor: pointer;
}
.box{
    top:50%;
    
    
}
.box input[type="submit"]:hover{
	background:#2ecc71;
}
               
            
        </style>
    </head>
    <body>
     
    <form class="box"  name="First"action="First_page2" method="Post">
       <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
     <input type="submit" name="registion" value="Next" style="background-color: black;"><a href="second.jsp"></a>
    </form>
               </body>
</html>
