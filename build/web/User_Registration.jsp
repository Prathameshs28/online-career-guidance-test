<%-- 
    Document   : User_Registration
    Created on : Dec 4, 2019, 10:39:33 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User_Registration</title>
        <link rel="Stylesheet" href="bootstrap.css">
        <style>
            *{
                margin: 0;
                padding:0;
            }
           .jambotron{
                background-color: white; 
                margin-left:320px;
                margin-right:240px;
                opacity: 0.9;
                border: 3px solid black;
                border-radius: 30px;
               
            }
            h1{
                text-shadow: 2px 2px 2px blue;
            }
            body{
                background-image: url("Save.jpg");
                background-size: cover;
            }
            button{
                    width:100px;height: 40px;
                    transition-property: width,height;
                    transition-duration: 0.5s;
                    transition-timing-function: linear;
            }
            button:hover{
                    text-align: center;
                    width:120px;height: 50px;
            }
       
        </style>
    </head>
    <body>
        
        <script src="validation.js"></script>
        <form action="User_Registration" name="User_Registration" method="post">
        <br>
        <div class="jambotron"><br>
        <center><h1><b>Registration</b></h1></center><br><br>
        <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-3">
                <label>First Name</label>
            </div>
            <div class="col-sm-3">
                <label>Middle Name</label>
            </div>
            <div class="col-sm-3">
                <label>Last Name</label>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-3">
                <input type="text" name="txt_Fname" class="form-control" onkeypress="javascript:return isString(event)" required="">
            </div>
            <div class="col-sm-3">
                <input type="text" name="txt_Mname" class="form-control" onkeypress="javascript:return isString(event)" required="">
            </div>
            <div class="col-sm-3">
                <input type="text" name="txt_Lname" class="form-control" onkeypress="javascript:return isString(event)" required="">
            </div>
        </div><br>
             <div class="row">
                <div class ="col-sm-3"></div>
                    <div class="col-sm-3">
                        <label>Address :- </label>
                    </div>
                <div class="col-sm-4">
                    <textarea rows="3" cols="20"class="form-control" name="txt_add" required=""></textarea><br>
                </div>
            </div>
            <div class="row">
                <div class ="col-sm-3"></div>
                    <div class="col-sm-3">
                        <label>Age:- </label>
                    </div>
                <div class="col-sm-4">
                    <input type="text" class="form-control" maxlength="2" name="txt_Age" onkeypress="javascript:return isNumber(event)" required=""><br>
                </div>
            </div>
            <div class="row">
                <div class ="col-sm-3"></div>
                    <div class="col-sm-3">
                        <label>Gender:- </label>
                    </div>
                <div class="row">
                <div class="col-sm-4">
                    <input type="radio" name="gender" value="Male">Male
                    <input type="radio" name="gender" value="Female">Female<br><br>
                </div>
            </div> 
            <div class="row">
                <div class ="col-sm-3"></div>
                    <div class="col-sm-3">
                        <label>DOB:- </label>
                    </div>
                <div class="col-sm-4">
                    <input type="date" name="dob" class="form-control" required=""><br>
                </div>
            </div>
             <div class="row">
                <div class ="col-sm-3"></div>
                    <div class="col-sm-3">
                        <label>Contact Number:- </label>
                    </div>
                <div class="col-sm-4">
                    <input type="text" name="txt_cono" maxlength="10" class="form-control" onkeypress="javascript:return isNumber(event)" required=""><br>
                </div>
            </div>
           <div class="row">
                <div class ="col-sm-3"></div>
                    <div class="col-sm-3">
                        <label>Email Id:- </label>
                    </div>
                <div class="col-sm-4">
                    <input type="email"  name="email" class="form-control" required=""><br><br>
                </div>
            </div>
            <div class="row">
                <div class ="col-sm-3"></div>
                    <div class="col-sm-3">
                        <label>User Name:- </label>
                    </div>
                <div class="col-sm-4">
                    <input type="text" name="U_Name" class="form-control" required=""><br>
                </div>
            </div>
              <div class="row">
                <div class ="col-sm-3"></div>
                    <div class="col-sm-3">
                        <label>password:- </label>
                    </div>
                <div class="col-sm-4">
                    <input type="password" name="Password"  id="password" class="form-control"  onkeyup='check();' maxlength="15" required=""><br>
                </div>
            </div>
             <div class="row">
                <div class ="col-sm-3"></div>
                    <div class="col-sm-3">
                        <label>Confirm Password:- </label>
                    </div>
                <div class="col-sm-4">
                    <input type="password" name="C_Password" class="form-control"  id="confirm_password"  onkeyup='check();' maxlength="15" required=""><br>
                     <span id='message'></span>
                </div>
            </div>
                <div class="row">
                <div class ="col-sm-3"></div>
                    <div class="col-sm-3">
                        <label>Upload Photo:- </label>
                    </div>
                <div class="col-sm-4">
                    <input type="File" name="Photo" required=""><br>
                     <span id='message'></span>
                </div>
            </div>
                <div class="row">
                <div class ="col-sm-3"></div>
                    <div class="col-sm-3">
                        <label>Upload Sign:- </label>
                    </div>
                <div class="col-sm-4">
                    <input type="File" name="SPhoto" required=""><br>
                     <span id='message'></span>
                </div>
            </div>
                <br>
                <br>
            <div class="row">
                <div class ="col-sm-4"></div>
                    <div class="col-sm-2">
                        <a href="Login.jsp" class="btn btn-danger" style="height: 40px; width: 90px;">Cancel</a>&nbsp;&nbsp;&nbsp;                        
                    </div>
                <div class="col-sm-2">
                   <input type="submit" name="btnn" class="btn btn-success" value="Registration" style="height: 40px;">   
                </div>
                   <br>
                     <br>
                     <br>
                     <br>
            </div>   
         </div>
         </div>
        <br>
        <br>
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

        </form>
       </body>
</html>

