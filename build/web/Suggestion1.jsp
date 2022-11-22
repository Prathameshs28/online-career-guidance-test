<%-- 
    Document   : Suggestion1
    Created on : Feb 14, 2020, 11:24:08 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Suggestion Page</title>
        <link rel="stylesheet" href="bootstrap.css" type="text/css">
        <link rel="stylesheet" href=" https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        
        <script src="validation.js"></script>
  <style>
           body{
                background-image: url("Save.jpg");
            }
            label
            {
                
                font-size: 15px;
                font-family: arial black;
                
            }
            input[type=text]:hover
                    {
                    border: 2px solid darkgrey;
                    
                   }
          
                   input[type=submit]:hover
                    {
                    border: 2px solid darkgreen;
                    
                   }
                   
                   ul {
  list-style-type: none;
  margin:0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li a:hover
 {
     color: white;
     
 }
 
li {
  float: left;
   }

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 35px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: #111;
}

.active {
  background-color: #4CAF50;
}

      table, td, th {  
  border: 2px solid black;
  text-align: left;
}

table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  padding:9px;
}
.jumbotron{
    border-radius: 40px;
}
button{
           height: 48px;
           margin-left: 1172px;
           transition-property: height;
           transition-duration: 0.3s;
           transition-timing-function: linear;
      }
      button:hover{
          text-align: center;
          height:48px;
      }             
        </style>
        <ul>
  <li><a class="active" href="Home_Page.jsp">Home</a></li>
   <li><a href="Login.jsp">Logout</a></li>
  </ul>
    </head>
    <body>
        <body style="background-image: url(Save.jpg);background-size:cover;background-repeat: no-repeat">
        
            
        <div class="jumbotron" style="margin-left:220px;margin-top:40px;width:70%;opacity:0.8;box-shadow:0px 0px 8px 8px black;height:650px ">
            
            <div class="row">
                   <div class="col-sm-4"></div>
                   <div class="col-sm-5">
                       <center> <label><h2 style="color: black;text-shadow: 3px 3px 6px silver;padding-bottom:0px"> Suggestion </h2></label></center>
                    </div>
                   <div class="col-sm-3"></div>
                 </div>
            <br> 
                 <div class="row">
                   <div class="col-sm-2"></div>
                   <div class="col-sm-2">
                       <label> Full Name:</label></div>
                   <div class="col-sm-2">
               <b>      <input type="text" style="width:250px;" value="<%=session.getAttribute("fname")%> <%=session.getAttribute("mname")%> <%=session.getAttribute("lname")%>" class="form-control" readonly=""> </label>
                  </div>
                   <div class="col-sm-6">
                       <label></label>
                   </div>
                   <div class="col-sm-2"></div>
                 </div> 
                 <br>
                 <div class="row">
                   <div class="col-sm-2"></div>
                   <div class="col-sm-2">
                       
                        <b> <label> Exam Type: </label>
                    </div>
                    <div class="col-sm-2">
                       <label><%=session.getAttribute("etype")%></label>
                   </div>
                   <div class="col-sm-2"></div>
                   
                 </div>
                 <br>
                    <div class="row">
                   <div class="col-sm-2"></div>
                   <div class="col-sm-2">
                       <label> Your Marks: </label>
                    </div>
                   <div class="col-sm-6">
                      <label><%=session.getAttribute("marks")%></label>
                       
                   </div>
                   <div class="col-sm-2"></div>
                 </div><br>
                 <div class="row">
                     <div class="col-sm-2"></div>
                     <div class="col-sm-8">
                          <table>
  <tr>
    <th style="color: black;text-shadow: 3px 3px 6px silver;padding-bottom:0px">Your Marks</th>
    <th style="color: black;text-shadow: 3px 3px 6px silver;padding-bottom:0px">Our Suggestion</th>
  </tr>
   <tr>
    <th>Marks In Between 41-50</th>
    <th>You can go Diploma,Science,Commerce,Arts,ITI</th>
  </tr>
  <tr>
    <th>Marks In Between 31-40</th>
    <th>You can go Science,Commerce,Arts,ITI</th>
  </tr>
  <tr>
    <th>Marks In Between 21-30</th>
    <th>You can go Commerce,Arts,ITI</th>
  </tr>
  <tr>
    <th>Marks In Between 11-20</th>
    <th>You can go Arts,ITI </th>
  </tr>
  </table> <br>
  <br> <br>
          <form acttion="Finsh" method="post">
       <div class="row">
                   <div class="col-sm-3"></div>
                   <div class="col-sm-3">
                       <button type="submit" name="btn_submit" class="btn btn-success" value="Continue" style="width:100px; margin-left: 70px;"><a href="Login.jsp" style="color: white;">Finish</a></button>
                  </div>
                    <div class="col-sm-3">
                          <button onclick="window.print();" class="btn btn-primary" style="width:100px;height:45px;border-radius:10px;">Print</button>
                    </div> 
       </div></form>
          </div>
                 </form> 
    </body>
</html>
