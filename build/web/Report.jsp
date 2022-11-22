<%-- 
    Document   : Report
    Created on : Mar 3, 2020, 2:10:00 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>Report Page</title>
        <link rel="Stylesheet" href="bootstrap.css">
        <style>
                     body{
	margin:0;
	padding:0;
	font-family: sans-serif;
	background:url(website_contact_background.png);
        background-size: cover;
        color:black;
}
           .box{
	width: 800px;
        height: 500px;
	padding: 40px ;
	position: absolute;
	top:50%;
	left: 50%;
	transform: translate(-50%,-50%);
	background:#f7e1b5;
	text-align: center;
        border-radius: 30px;
 }
.box h1{
	color: Brown;
	text-transform: uppercase;
	font-weight: 500;
       
        
}
.d input{
      position:relative;
    width: 45%;
    padding: 9px 0;
     border-radius: 5px;
     
    
}

button{
                     color: black;
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
        <form class="box" action="View.jsp" method="POST">
        <script src="validation.js"></script>
        <h1>REPORT</h1><br>
         <div class="btn">
            <input type="submit" name="btn_cancel" class="btn btn-success" style="background-color:yellowgreen;" value="Student info"> &nbsp;   &nbsp;   &nbsp;
         <input type="submit" name="btn_cancel" class="btn btn-success" style="background-color:blue;" value="Payment info">&nbsp;   &nbsp;   &nbsp;            
         <input type="submit"  name="btn_cancel" class="btn btn-success" style="background-color:orange;" value="Question info">&nbsp;   &nbsp;   &nbsp;  
         <input type="submit"  name="btn_cancel" class="btn btn-success" style="background-color:purple;" value="Feedback info">     
        </div> <br><br>
        <div class="d">            
            <input type="date" name="txt_Date1" ><br><br>
            TO <br><br>
            <input type="date" name="txt_Date2"><br>
        </div><br>
        <div class="btn">
            <input type="submit" name="btn_cancel" class="btn btn-success" style="background-color:yellowgreen;" value="date_Student info"> &nbsp;   &nbsp;   &nbsp;
         <input type="submit" name="btn_cancel" class="btn btn-success" style="background-color:blue;" value="date_Payment info">&nbsp;   &nbsp;   &nbsp;            
         <input type="submit"  name="btn_cancel" class="btn btn-success" style="background-color:orange;" value="date_Question info">&nbsp;   &nbsp;   &nbsp;  
         <input type="submit"  name="btn_cancel" class="btn btn-success" style="background-color:purple;" value="date_Feedback info">     
        </div><br><br>
        <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-2"></div>
            <div class="col-sm-3">
             <button type="submit" name="btn_submit" class="btn btn-primary" value="Continue" style="width:100px; margin-left: 70px;"><a href="A_HomePage.jsp" style="color: white;">Back</a></button>
            </div>
        </div>
        </form>
       </body>
</html>
