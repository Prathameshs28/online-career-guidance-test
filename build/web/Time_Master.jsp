<%-- 
    Document   : Time_Master
    Created on : Feb 10, 2020, 1:11:48 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Time_Master</title>
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
                background-color: white; 
                margin-left:300px;
                margin-right:300px;
                margin-top: 50px;
                opacity: 0.9;
                border: 3px solid black;
                border-radius: 30px;
               
            }
             h2{
                text-shadow: 2px 2px 2px blue;
            }
            button{
                    top:30px;
                    height: 40px;
                    transition-property: height;
                    transition-duration: 0.3s;
                    transition-timing-function: linear;
            }
            button:hover{
                    text-align: center;
                    height:50px;
            }
         </style>
    </head>
    <body>
        <form name="Time_Master" action="Time_Master" method="Post">
         <div class="jambotron"><br><br>   
             <center><h2>Exam Time</h2></center><br><br> 
          <div class="row">
             <div class="col-sm-3"></div>
            <div class="col-sm-2"><label>Time-:</label></div>
            <div class="col-sm-4">
                <input type="Text" name="Time" class="form-control">
            </div>  
         </div><br><br>
         <div class="row">
             <div class="col-sm-4"></div>
             <div class="row-sm-3"></div>
             <div class="col-sm-3">
              <button type="submit" name="btn_submit" class="btn btn-primary" value="Continue" style="width:80px; margin-left: 70px;"><a href="A_HomePage.jsp" style="color: white;">Back</a></button> 
             </div>
               <div class="col-sm-3">
                    <button input="submit" value="next" name="btn_submit" class="btn btn-success" style="width:80px;">Next</button>
             </div>
        </div><br><br>
        </form>
        </body>
</html>
