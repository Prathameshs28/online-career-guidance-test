<%-- 
    Document   : userabout
    Created on : Mar 10, 2020, 10:38:34 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User About</title>
    <link rel="Stylesheet" href="bootstrap.css">
    <style>
        *{
                margin: 0;
                padding: 0;
            }
            body{
                background-image: url("Save.jpg");
                background-size: cover;
        
                
            }
            .jambotron{
                margin-top: 50px;
                background-color: white; 
                margin-left:300px;
                margin-right:300px;
                opacity: 0.9;
                border: 3px solid black;
                border-radius: 30px;
               
            }
            .p{
                text-align: justify;
                text-justify: distribute;
                text-orientation: rotate-right;
                text-shadow: inherit;
            }
             h1{
                text-shadow: 2px 2px 2px blue;
            }              
             h2{
                text-shadow: 2px 2px 2px blue;
            }
                button{
                    height: 40px;
                    transition-property: height;
                    transition-duration: 0.3s;
                    transition-timing-function: linear;
                    width:80px;
                    background-color:white;
            }
            button:hover{
                    text-align: center;
                    height:50px;
            }
         </style>
    </head>
    <body>
                 
            <div class="jambotron">
            
                <center>   <h1>About Us</h1></center>
       
       <div class="about_Para">
        <p > <b><br>
               &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;This web application develop for students who don’t know about their perfect career option.
               <br>  &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;We helps through this application to students for choose their good career option. 
               Our organization <br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;gives support and help to students for their every need. 
               We develop this application for 10 th and&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;12th students  to choose their perfect way.
               <br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;We helps to students on many social network platforms like facebook, youtube and through
              &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;this application.    
        </p> </div><br>
                <center><button type="submit" name="btnn" class="btn btn-primary" value="Back"><a href="Home_Page.jsp" style="color:white">Back</a></button></center>
              <br><br>               
            </div>
    </body>
</html> 
