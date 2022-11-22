<%-- 
    Document   : Payment_details
    Created on : Sep 12, 2019, 10:15:49 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="Stylesheet" href="bootstrap.css">
        <title>Payment Details</title>        
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
                margin-left:300px;
                margin-right:300px;
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
         <form name="Payment" action="Payment" method="post">
        <script src="validation.js"></script>
        <div class="jambotron"><br>
        <center><h1><b>Payment Details</b></h1></center><br><br>
         <div class="row">
                <div class ="col-sm-3"></div>
                    <div class="col-sm-3">
                        <label><b>Total Payment:- </label>
                    </div>
                <div class="col-sm-4">
                    <h5><b>100 ₹ Only</b></h5>
                </div>
            </div>
        <br>
                      <div class="row">
                <div class ="col-sm-3"></div>
                    <div class="col-sm-3">
                        <label>Select Payment Type:- </label>
                    </div>
                <div class="col-sm-4">
                    <select class="form-control" name="Ctype" required="">
                        <option> </option>
                        <option value="Debit">Debit</option>
                        <option value="Credit">Credit</option>
                    </select>
                </div>
                </div>
                <br>
                <br>
            <div class="row">
                <div class ="col-sm-3"></div>
                    <div class="col-sm-3">
                        <label>Bank Name:- </label>
                    </div>
                <div class="col-sm-4">
                    <select class="form-control" name="Btype" required="">
                        <option> </option>
                        <option>ICICI</option>
                        <option>SBI</option>
                         <option>Yes Bank</option>
                          <option>Bank of Maharashtra </option>
                       </select>
                </div>
            </div>
            <br>
            <br>
            <div class="row">
                <div class ="col-sm-3"></div>
                    <div class="col-sm-3">
                        <label>16 Digit Number:-</label>
                    </div>
                <div class="col-sm-4">
                    <input type="text" name="Sixteen_Dno" class="form-control"  maxlength="16" onkeypress="javascript:return isNumber(event)" required="" >
                </div>
            </div>
            <br>
            <br>
            <div class="row">
                <div class ="col-sm-3"></div>
                    <div class="col-sm-3">
                        <label>3 Digit CVV Number:-</b></label>
                    </div>
                <div class="col-sm-4">
                    <input type="text" name="Three_Dno"  maxlength="3" class="form-control" onkeypress="javascript:return isNumber(event)" required="">
                </div>
            </div>
            <br>
            <br>
             <div class="row">
                 <div class="col-sm-3"></div>
                    <div class="col-sm-3">
                        <label> Name:-</label>
                    </div>
                <div class="col-sm-4">
                    <input type="text" name="User_Name" class="form-control"  onkeypress="javascript:return isString(event)" required="" >
                </div>
            </div>
            <br>
            <br>
            <div class="row">
                <div class ="col-sm-4"></div>
                    <div class="col-sm-2">
                        <a href="User_Registration.jsp" class="btn btn-danger" style="height: 40px; width: 90px;">Cancel</a> 
                    </div>
                <div class="col-sm-2">
                      <button type="submit"  name="btn" value="paynow" class="btn btn-success">Pay Now</button>&nbsp;&nbsp;&nbsp;                        
                </div>
               <div class="col-sm-2">
                      <button onclick="window.print();" class="btn btn-primary" style="width: 100px; height:40px;">Print</button>
                </div> 
                <br>
                <br>
                <br>
                </div>
             </div>
            <br>
            <br>
            </form>      
       </body>
    </html>
   