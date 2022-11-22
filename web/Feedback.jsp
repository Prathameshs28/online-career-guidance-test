<%-- 
    Document   : Feedback
    Created on : Jan 4, 2020, 7:24:50 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">        
        <title>Feedback</title>
         <link rel="Stylesheet" href="bootstrap.css">
    </head>
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
                margin-top:70px;
                background-color: white; 
                margin-left:400px;
                margin-right:400px;
                opacity: 0.9;
                border: 3px solid black;
                border-radius: 30px;
               
            }
             h2{
                text-shadow: 2px 2px 2px blue;
            }
            button{
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
    <body>
        <form name="Feed_Back1" action="Feed_Back1" method="post">
        <script src="validation.js"></script>
        <div class="jambotron"><br><br>
            <h2><center>Feedback</center></h2><br>
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-3">
                    <label>Enter Name-:</label>
                </div>
                <div class="col-sm-5">
                    <input type="text" name="Name" class="form-control">
                </div>
            </div><br><br>
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-4">
                    <label>Enter User Issue-:</label>
                </div>
           </div><br>
            <div class="row">
                <div class="col-sm-3"></div>
                <div class="col-sm-8">
                    <textarea row="4" cols="" class="form-control" name="Issue"  onkeypress="javascript:return isAlphanumric(event)"></textarea>
                </div>
            </div><br><br>
            <div class="row">
                <div class="col-sm-3"></div>
                <div class="col-sm-3">
                    <button  type="submit" name="btn_Submit" value="Back" class="btn btn-primary" style="width:100px;">Back</button> 
                </div>
                <div class="col-sm-3">
                    <button type="submit" name="btn_Submit" value="Send" class="btn btn-success" style="width:100px">Send</button>
                </div>                                  
            </div><br>
      </div>
        </form>
    </body>
</html>
