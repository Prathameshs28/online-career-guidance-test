<%-- 
    Document   : Forget_Password
    Created on : Dec 26, 2019, 9:56:21 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forgot Password</title>
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
                margin-left:420px;
                margin-right:420px;
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
    <body>
        <form action="Forgot_Password" name="Forgot_Password" method="post">
        <script src="validation.js"></script>
        <br><br><br><br>
        <div class="jambotron"><br><br>
            <h2><center>Forgot Password</center></h2><br><br>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-4">
                    <label>User Name-:</label>
                </div>
                <div class="col-sm-5">
                    <input type="text" name="User_Name" class="form-control" onkeypress="javascript:return isString(event)">
                </div>
            </div><br><br>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-4">
                    <label>Change Password-:</label>
                </div>
                <div class="col-sm-5">
                    <input type="password" name="Password"  class="form-control" id="password"  onkeyup='check();' maxlength="6" >
                </div>
            </div><br><br>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-4">
                    <label>Confirm Password-:</label>
                </div>
                <div class="col-sm-5">
                    <input type="password" name="C_Password" maxlength="6" class="form-control" id="confirm_password"  onkeyup='check();' >
                    <span id='message'></span>
                </div>
            </div><br><br>
             <div class="row">
                <div class ="col-sm-2"></div>
                    <div class="col-sm-4">
                      <button type="submit" name="btn_submit"class="btn btn-danger" value="Reset" style="width:100px;">Back</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                        
                    </div>
                <div class="col-sm-4">
                    <button type="submit" name="btn_submit" class="btn btn-success" value="Save" style="width:100px;">Save</a></button>   
                </div>
                     <br>
                     <br>
                     <br>
            </div> 
             <script type="text/javascript">
	var check = function() {
  if (document.getElementById('password').value ==
    document.getElementById('confirm_password').value) {
    document.getElementById('message').style.color = 'green';
    document.getElementById('message').innerHTML = 'matching';
     } else {
    document.getElementById('message').style.color = 'red';
    document.getElementById('message').innerHTML = 'not matching';
   }
}
</script>
        </div> <br><br>  
        

        </form>
    </body>
</html>
