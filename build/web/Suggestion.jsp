<%-- 
    Document   : Suggestion
    Created on : Dec 27, 2019, 4:55:27 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Suggestion</title>
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
        <form name="Suggestion" action="Suggestion" method="post">
        <script src="validation.js"></script>
        <div class="jambotron"><br><br>
            <h2><center>Suggestion</center></h2><br>
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-3">
                    <label>Exam Type-:</label>
                </div>
                <div class="col-sm-5">
                    <input type="text" name="E_Type" class="form-control"value="<%=session.getAttribute("etype")%>" readonly="">
                </div>
            </div><br><br>
               <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-3">
                    <label>Name-:</label>
                </div>
                <div class="col-sm-5">
                    <input type="text" name="E_Type" class="form-control" value="<%=session.getAttribute("fname")%> <%=session.getAttribute("mname")%> <%=session.getAttribute("lname")%>" readonly="">
                </div>
            </div><br><br>
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-3">
                    <label>Total Mark-:</label>
                </div>
                <div class="col-sm-5">
                    <b> <input type="text" name="T_mark" class="form-control" value="50" onkeypress="javascript:return isNumber(event)"></b>
                </div>
            </div><br><br>
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-3">
                    <label>Obtain Mark-:</label>
                </div>
                <div class="col-sm-5">
                    <input type="text" name="O_mark" class="form-control" onkeypress="javascript:return isNumber(event)">
                </div>
            </div><br><br>
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-3">
                    <label>Suggestion-:</label>
                </div>
                </div>
            <div class="row">
                <div class="col-sm-3"></div>
                <div class="col-sm-8">
                    <textarea class="form-control" name="Sugestion" onkeypress="javascript:return isAlphanumric(event)"></textarea>
                </div>
            </div><br><br>
            <div class="row">
                <div class="col-sm-3"></div>
                <div class="col-sm-3">
                    <button  type="submit" name="btn_Submit" class="btn btn-primary" style="width:100px;">Back</button> 
                </div>
                <div class="col-sm-3">
                    <button type="submit" name="btn_Submit" values="Send" class="btn btn-success" style="width:100px">Send</button>
                </div>                                  
            </div><br>
      </div>
        </form>
    </body>
</html>
