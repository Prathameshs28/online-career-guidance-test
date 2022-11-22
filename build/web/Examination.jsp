<%-- 
    Document   : Examination
    Created on : Dec 26, 2019, 10:19:25 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Examination</title>
        <link rel="Stylesheet" href="bootstrap.css">
         <style>
            *{
                margin: 0;
                padding: 0;
            }
            body{
                background-image: url("Save.jpg");
                background-size:cover;
                background-repeat: no-repeat;
            }
            .jambotron{
                background-color: white; 
                margin-left:400px;
                margin-right:400px;
                margin-top:70px;
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
            nav{
                    position: fixed;
                    top:0;
                    left:0;
                    width:100%;
                    height: 80px;
                    padding: 10px 70px;
                    box-sizing: border-box;
                    background: rgba(0,0,0,0.5);                    
                }
                
                nav ul{
                    list-style: none;
                    float: right;
                    margin: 0px;
                    padding:0px;
                    display: flex;
                     }
                     nav ul li a{
                         line-height: 80px;
                         color: #fff;
                         padding: 12px 30px;
                         text-decoration: none;
                         text-transform: uppercase;
                         font-size: 15px;
                         font-weight: bold;
                     }
                     nav ul li a.active{
                         background: #e2472f;
                         color: #fff;
                         border-radius: 6px;
                         
                     }
         </style>   
    </head>
    <body>
        <form action="Examination" name="Examination" method="post">
        <script src="validation.js"></script>
        <div class="jambotron"><br><br>
        <h2><center>Examination</center></h2><br><br>
           <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-3">
                <label>Exam Type-:</label>
            </div>
                <div class="col-sm-6">
                    <select type="text" name="E_Type" class="form-control">
                        <option>Exam Type</option>
                        <option>After 10th</option>
                        <option>After 12th</option>
                    </select>
                </div>              
        </div><br><br>
            <div class="row">
                <div class ="col-sm-3"></div>
                    <div class="col-sm-3">
                        <button type="submit" name="btn_submit"class="btn btn-primary" style="width:100px;"><a href="Time_Master.jsp" style="color: white">Back</a></button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                        
                    </div>
                <div class="col-sm-4">
                   <button type="submit" name="btn_submit" value="Next" class="btn btn-success" value="Regisition" style="width:100px;" >Next</button>   
                </div>
                     <br>
                     <br>
            </div>
            </div><br><br>
        </form>
        </body>
</html>
