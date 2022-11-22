    <%-- 
    Document   : Home_Page
    Created on : Jan 12, 2020, 9:24:00 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home_Page</title>
        <link rel="Stylesheet" href="bootstrap.css">
        <link rel="stylesheet" tpye="text/css" href="style.css">   
        <style>
           
            body{
            
                margin:0;
                  margin:0;
                background:url(homepage.jpg);   
   background-repeat: no-repeat;
   background-size: cover;
                
            }
            
            h3{   
    font-family: Algerian;
    color:skyblue;
    margin:0%;
    padding:0%;
    font-size: 50px;
    margin-bottom: 50px;
    padding: 3px;
}
            h2{   
    font-family: Algerian;
    color:orange;
    margin:0%;
    padding:0%;
    font-size: 40px;
   
}
.home{
    position: static;
    top:50%;
    left:50%;
    color:black;
    
}
            
            
            .navbar{
                top:20%;
                width:100%;
                background:#6699cc;
                box-shadow: 0 2px 5px 0 rgba(0,0,0,0.16), 0 2px 10px 0 rgba(0,0,0,0.12);
                
                
            }
            ul{
                text-align: right;
                display: inline;
                margin: 0;
                padding: 0;
                list-style: none;
                }
                
                ul li{
                    font: bold 12px sans-serif;
                    display: inline-block;
                    position: relative;
                    padding: 10px 30px;
                    background: #6699cc;
                    
                }
                ul li a{
                    text-decoration: none;
                    padding: 10px 10px;
                    color: white;
                    font-size: 20px;
                }
                ul li:hover{
                    background: #4dd0e1;
                    color:white;
                }                
        </style>
            
    </head>
    <body>
       <form action="logut" method="post">
          <br><br>
         <h3> <marquee>CAREER GUIDANCE TEST</marquee>   </h3> 
        <div class="navbar">
            <ul>
                 <li><a href="User_Profile.jsp">My Profile</a></li>
                  <li><a href="User_Examination.jsp">Examination</a></li>
                   <li><a href="Feedback.jsp">Feedback</a></li>
                 <li><a href="userabout.jsp">About US</a></li>
                 <li><a href="contact_Us_user.jsp">Contact Us</a></li>
                 <li><a href="priview.jsp">Priview</a></li>
                 <li><a href="Login.jsp">Logout</a></li>
                   
                       
                
             </ul>
        </div> 
         <br>
         <h2>
             &nbsp; &nbsp;  Choose Your Perfect Career Way For Your Great Success....
         </h2>
        <img src="Home.jpg" style="top:70%;left:10%;width:100%; height: 570px;">
           </form>
    </body>
</html>
