<%-- 
    Document   : User_Profile
    Created on : Dec 31, 2019, 9:48:55 AM
    Author     : admin
--%><%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User_Profile</title>
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
                margin: 0;
                padding: 0;
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
            nav{
                    position: fixed;
                    top:5px;
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
         <form name="User_Profile" action="User_Profile" method="post">
        <script src="validation.js"></script>
        <br>
        <div class="jambotron">
            <br>
            <div class="row">
                <div class="col-sm-4"></div>
                <div  class="col-sm-5">
                    <h1>User Profile</h1>
                </div>
                <div class="col-sm-3">
                    <img style="margin-right:  20px;margin-top: 20px; border-radius: 10px;"  src="<%=session.getAttribute("photo")%>" width="120" height="120">
                </div>       
            </div>
            <%
       
        Connection cn = null;
            Statement st = null;      
            try 
            {
                Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                cn = DriverManager.getConnection("jdbc:odbc:IQ_TEST");
                st = cn.createStatement();
                String sql = "select * from User_Registration inner join Pay_ment on User_Registration.User_Name=Pay_ment.User_Name where User_Registration.User_Name='" + session.getAttribute("username") + "'";
                ResultSet rs = st.executeQuery(sql);
                while (rs.next()) 
                 {         
              

%>  
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
                <input type="text" name="txt_Fname" value="<%=rs.getString("F_name")%>" class="form-control">
            </div>
            <div class="col-sm-3">
                <input type="text" name="txt_Mname" value="<%=rs.getString("M_name")%>" class="form-control">
            </div>
            <div class="col-sm-3">
                <input type="text" name="txt_Lname" value="<%=rs.getString("L_name")%>" class="form-control" >
            </div>
        </div><br>
             <div class="row">
                <div class ="col-sm-3"></div>
                    <div class="col-sm-3">
                        <label>Address :- </label>
                    </div>
                <div class="col-sm-4">
                    <textarea rows="3" cols="20"class="form-control" name="txt_add">
                        <%=rs.getString("Address")%>
                    </textarea><br>
                </div>
            </div>
            <div class="row">
                <div class ="col-sm-3"></div>
                    <div class="col-sm-3">
                        <label>Age:- </label>
                    </div>
                <div class="col-sm-4">
                    <input type="text" class="form-control" value="<%=rs.getString("Age")%>" name="txt_Age"><br>
                </div>
            </div>
            <div class="row">
                <div class ="col-sm-3"></div>
                    <div class="col-sm-3">
                        <label>Gender:- </label>
                    </div>
                <div class="row">
                <div class="col-sm-4">
                    <select name="gender" class="form-control">
                        <option value="">Select</option>
                        <option selected=""><%=rs.getString("gender")%></option>
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>
                    </select>
                </div>
                </div> 
                 <br>
            <div class="row">
                <div class ="col-sm-3"></div>
                    <div class="col-sm-3">
                        <label>DOB:- </label>
                    </div>
                <div class="col-sm-4">
                    <input type="date" name="dob" value="<%=rs.getString("DOB")%>" class="form-control"><br>
                </div>
            </div>
             <div class="row">
                <div class ="col-sm-3"></div>
                    <div class="col-sm-3">
                        <label>Contact Number:- </label>
                    </div>
                <div class="col-sm-4">
                    <input type="text" name="txt_cono" value="<%=rs.getString("C_Number")%>" class="form-control"><br>
                </div>
            </div>
           <div class="row">
                <div class ="col-sm-3"></div>
                    <div class="col-sm-3">
                        <label>Email Id:- </label>
                    </div>
                <div class="col-sm-4">
                    <input type="email"  name="email" value="<%=rs.getString("Email_ID")%>" class="form-control"><br>
                </div>
            </div>
                 <div class="row">
                    <div class="col-sm-3"></div>
                        <div class="col-sm-3">
                        <label>User Name:-</label>
                    </div>
                    <div class="col-sm-4">
                        <input type="text" name="text_Uname" class="form-control" value="<%=rs.getString("User_Name")%>">
                    </div>
                </div><br>
              <div class="row">
                <div class ="col-sm-3"></div>
                    <div class="col-sm-2">
                        <input type="submit" value="Edit" class="btn btn-primary" name="btnn" style="width: 100px; height:40px;">                      
                    </div>
                <div class="col-sm-2">
                   <button type="submit" name="btnn" class="btn btn-primary" value="Back">Back</button>   
                </div>
                  <div class="col-sm-2">
                      <button onclick="window.print();" class="btn btn-primary" style="width: 100px; height:40px;">Print</button>
                </div>                                             
            </div>   
         </div<br><br> 
         <%
           }          
            } catch (Exception ex) {
                out.println(ex.toString());
            }
              
%>
         </div>           
        </form>   
    </body>
</html>
