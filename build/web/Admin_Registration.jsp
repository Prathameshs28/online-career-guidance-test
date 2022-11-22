<%-- 
    Document   : Admin_Registration
    Created on : Dec 3, 2019, 9:09:33 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin_Registration</title>
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
    </head>
    <body><br><br>
        <form name="Admin_Regi" action="Admin_Regi" method="post">
        <script src="validation.js"></script>
        <div class="jambotron"><br>
            <h2><center>Admin Registration</center></h2><br>
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-3">
                    <label>Admin Name:-</label>
                </div>
                <div class="col-sm-6">
                    <input type="text" name="text_adminname" class="form-control" onkeypress="javascript:return isString(event)"><br>
                </div>
            </div>
            <div class="row">
                <div class ="col-sm-2"></div>
                    <div class="col-sm-3">
                        <label>Gender:- </label>
                    </div>
                <div class="row">
                <div class="col-sm-6">
                    <b> <input type="radio" name="gender" value="Male">Male &nbsp &nbsp &nbsp;
                        <input type="radio" name="gender" value="Female">Female<br><br></b>
                </div>                    
            </div> 
                <div class="row">
                <div class ="col-sm-2"></div>
                    <div class="col-sm-3">
                        <label>Contact Number:- </label>
                    </div>
                <div class="col-sm-6">
                    <input type="text" name="contact" class="form-control" maxlength="" onkeypress="javascript:return isContactno(event)"><br>
                </div>
            </div>
           <div class="row">
                <div class ="col-sm-2"></div>
                    <div class="col-sm-3">
                        <label>Email Id:- </label>
                    </div>
                <div class="col-sm-6">
                    <input type="text" name="Email" class="form-control"><br>
                </div>
            </div>
            <div class="row">
                <div class ="col-sm-2"></div>
                    <div class="col-sm-3">
                        <label>User Name:- </label>
                    </div>
                <div class="col-sm-6">
                    <input type="text" name="Uname" class="form-control" onkeypress="javascript:return isString(event)"><br>
                </div>
            </div>
              <div class="row">
                <div class ="col-sm-2"></div>
                    <div class="col-sm-3">
                        <label>password:- </label>
                    </div>
                <div class="col-sm-6">
                    <input type="password" name="password" class="form-control"><br>
                </div>
            </div>
             <div class="row">
                <div class ="col-sm-2"></div>
                    <div class="col-sm-3">
                        <label>Confirm Password:- </label>
                    </div>
                <div class="col-sm-6">
                    <input type="password" name="Cpassword" class="form-control"><br>
                </div>
            </div>
                <br>
                 <div class="row">
                <div class ="col-sm-3"></div>
                    <div class="col-sm-3">
                      <button type="reset" name="btn_submit"class="btn btn-danger" style="width:100px;">Reset</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                        
                    </div>
                <div class="col-sm-4">
                   <button type="submit" name="btn_submit" class="btn btn-success" value="Regisition" style="width:150px;" >Registration Now</button>  
                </div>
                     <br>
                     <br>
            </div> 
        </div>
            <br>
        </div>
            <br>
        </form>
       </body>
</html>
