<%-- 
    Document   : contact_Us_user
    Created on : Mar 10, 2020, 11:11:28 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
            
                <center>   <h1>Contact Us</h1></center>
       
       <div class="about_Para">
        <p > <b><br>
         &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;You can contact us with many social media ways. We always ready to help students for their 
          <br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;every problem. We always reply on their problems and doubts. So always stay connected with us.We 
          <br>  &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;are  always available on these platforms ,
        Contact us through our email id  careerguidancetest.com
        <br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;Follow our   facebook page Career Guidance  
        Follow our   youtube channel CareerGuide    
        </p> </div><br>
                <center><button type="submit" name="btnn" class="btn btn-primary" value="Back"><a href="Home_Page.jsp" style="color:white">Back</a></button></center>
              <br><br>               
            </div>
    </body>
</html> 
