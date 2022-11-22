<%-- 
    Document   : A_HomePage
    Created on : Feb 5, 2020, 9:28:52 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>A_HomePage</title>
        <style>
           
            body{
            
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
                text-align: left;
                display: inline;
                margin: 0;
                padding: 0;
                list-style: none;
                }
                
                ul li{
                    font: bold 12px sans-serif;
                    display: inline-block;
                    position: relative;
                    padding: 15px 30px;
                    background: #6699cc;
                    
                }
                ul li a{
                    text-decoration: none;
                    padding: 25px 20px;
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
       
          <br><br>
         <h3> <marquee>CAREER GUIDANCE TEST</marquee>   </h3> 
        <div class="navbar">
            <ul>
                <li><a href="Admin_pannel.jsp">Admin Panel</a></li>         
                  <li><a href="Time_Master.jsp">Add Exam</a></li>
                  <li><a href="Report.jsp">Report</a></li>
                   <li><a href="About.jsp">About Us</a></li>
               <li><a href="Contact Us.jsp">Contact Us</a></li>
                  <li><a href="second.jsp">LogOut</a></li> 
                
            </ul>
        </div>
         <br>
         <h2>
             &nbsp; &nbsp;  Choose Your Perfect Career Way For Your Great Success....
         </h2>
   <img src="career-banner.jpg" style="top:70%;left:10%;width:100%; height: 570px;">
        
    </body>
</html>

