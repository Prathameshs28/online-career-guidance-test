<%-- 
    Document   : index
    Created on : Nov 8, 2019, 5:10:22 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            body{
                padding:0;
                margin: 0;
                font-family: sans-serif;
                background-image: url("IQ1.jpg");
                background-repeat: no-repeat;    
                background-size:cover;
            }
             .login-box{
                   width:370px;
                   height:500px;
                   background:#000;
                   color:#fff;
                   top:50%;
                   left:50%;
                   opacity: 0.8;
                    position:absolute;
                   transform:translate(-50%,-50%);
                   box-sizing:border-box;
	           padding:40px 30px;
                   border-radius: 30px;
             }
              h1{
                 color:wheat;
                 text-align: center;
                 font-size: 40px;
                  margin-top:20px;
                 border-bottom: 5px;
                 margin-bottom: 30px;
                 padding:13px 0;
                 text-shadow: 2px 2px 2px blue;
              }
             .textbox{
                 width: 100%;
                 overflow: hidden;
                 font-size: 10px;
                 padding: 8px 0;
                 margin: 8px 0;
                 border-bottom:  2px solid #4caf50;
             }
             .textbox i{
                 width:26px;
                 float:left;
                 text-align: center;
                 font-size: 20px;
             }
             .textbox input{
                 width: 100%;
                 border: none;
                 outline: none;
                 background: none;
                 color: black;
                 font-size: 15px;
                 width: 270px;
                 float: left;
                 margin: 5px;            
             }
             input[type="password"]
	       {   
                   border:none;
		   background:transparent;
		   outline:none;
		   height:15px;
		   color:#fff;
		   font-size:16px;
                   width: 270px;
		}
               input[type="text"]
	       {   
                   border:none;
		   background:transparent;
		   outline:none;
		   height:15px;
		   color:#fff;
		   font-size:16px;
		}
             .btn{
                 width: 150px;
                 height: 50px;
                 background:red;
                 border:2px solid #4caf50;
                 color: black;
                 padding: 5px;
                 border-radius: 20px;
                 font-size: 25px;
                 transition-property: height;
                 transition-duration: 0.5s;
                 transition-timing-function: linear;
                 
             }
             .btn:hover{
                 cursor: pointer;
                 background: green;
                 width:300px;
                 height: 50px;
             }
             p{
                 color:red;
                 margin:0;
	         padding:0;
	         font-weight:bold;
             }
        </style>
    </head>
    <body>
        <form action="U_Login" name="U_Login" method="post">
        <script src="validation.js"></script>
        <div class="login-box">
            <h1><center>User Login</center></h1>      
        <div class="textbox">        
            <i class="fa fa-user" aria-hidden="true"></i>
            <input type="text" name="text_name"  placeholder="Username">
            </div>
        <div class="textbox">
            <i class="fa fa-lock" aria-hidden="true"></i>
            <input type="password" name="text_password" placeholder="Password">
        </div>
        <br>
        <input  class="btn" name="btn_submit" type="submit" value="Login"><br><br>
        <input  class="btn" name="btn_submit" type="submit" value="Sign_in"><br><br>
        <p class="message">Forgot Password?<a href="Forget_Password.jsp">Password</a></p>
        </div>
        </form>
    </body>
</html>
