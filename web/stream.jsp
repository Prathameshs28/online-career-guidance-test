<%-- 
    Document   : stream
    Created on : Feb 14, 2020, 11:46:38 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Stream</title>
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
       
         <div class="jambotron"><br><br>   
              <form name="Stream" action="stream" method="Post">
             <center><h2>Stram</h2></center><br><br> 
           <h4>  <center>Choose Your Stream</center></h4><br><br>
           <div class="row">
               <div class="col-sm-4"></div>
               <div class="col-sm-4">
           <select type="text" name="Stream" class="form-control">
                        <option>Stream</option>
                        <option>Science</option>
                        <option>Commerce</option>
                        <option>Arts</option>
                    </select>
               </div>               
           </div><br><br>
          <div class="row">
                <div class ="col-sm-3"></div>
                    <div class="col-sm-3">
                      <input type="submit" name="btn_submit" class="btn btn-danger" value="Back"  style="width:100px;" ></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                  
                    </div>
                <div class="col-sm-4">
                    <input type="submit" name="btn_submit" class="btn btn-success" value="Continue" style="width:100px;">   
                </div>
                     <br>
                     <br>
            </div>
           
           <br>
                     <br>
                 </form>   
        </body>
</html>
