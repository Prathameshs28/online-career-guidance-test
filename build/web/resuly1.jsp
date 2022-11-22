0<%-- 
    Document   : result
    Created on : Nov 24, 2018, 5:27:53 PM
    Author     : Sayali
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>result page</title>
        <link rel="stylesheet" href="bootstrap.css" type="text/css">
        <link rel="stylesheet" href=" https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        
        <script src="validation.js"></script>
        <style>
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
  margin: 0;
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
             
        </style>
        <ul>
  <li><a class="active" href="Home_Page.jsp">Home</a></li>
  <li><a href="Login.jsp">Logout</a></li>

 
</ul>
    </head>
     <body style="background-image: url(Save.jpg);background-size:cover;background-repeat: no-repeat">
        
        <%
out.println(session.getAttribute("etype"));        
%>
        <div class="jumbotron" style="margin-left:220px;margin-top:40px;width:70%;opacity:0.8;box-shadow:0px 0px 8px 8px black;height:650px ">
            
            <div class="row">
                   <div class="col-sm-4"></div>
                   <div class="col-sm-5">
                       <center> <label><h2 style="color: black;text-shadow: 3px 3px 6px silver;padding-bottom:0px"> Result </h2></label></center>
                    </div>
                   <div class="col-sm-3"></div>
                 </div>
            <br> 
                 <div class="row">
                   <div class="col-sm-2"></div>
                   <div class="col-sm-2">
                       <label> Full Name: </label>
                       <b>   <input type="text" style="width:250px;" value="<%=session.getAttribute("fname")%> <%=session.getAttribute("mname")%> <%=session.getAttribute("lname")%>" class="form-control" readonly="">
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
                       <label> Seat No: <%=session.getAttribute("uid")%></label>
                    </div>
                   <div class="col-sm-6">
                      <label></label>
                       
                   </div>
                   <div class="col-sm-2"></div>
                 </div>
                 <br>
                 <div class="row">
                     <div class="col-sm-2"></div>
                     <div class="col-sm-8">
                          <table>
  <tr>
    <th>Exam Name</th>
    <th>Solved Question</th>
    <th>Correct Question</th>
    <th>Wrong Options</th>
     <th>Suggestion</th>

   
    
  
      
 
  </tr>
  
  <%
  
    Connection cn=null;
    Statement st=null;  
     float avg=0.0f;
  
  try
                     {
    int correct1=0;
    int wrong1=0;
    int total_question1=0;
  Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            cn=DriverManager.getConnection("jdbc:odbc:IQ_TEST");
  st=cn.createStatement();
  
   String sql="select * from student_result where Marks='1' and User_Name='"+session.getAttribute("username") +"' and Password='"+session.getAttribute("password") +"' and Exam_Type='"+session.getAttribute("etype") +"'";
  ResultSet rs=st.executeQuery(sql);
  while(rs.next())
           {
  correct1=correct1+1;
  }
   sql="select * from student_result where Marks='0' and User_Name='"+session.getAttribute("username") +"' and Password='"+session.getAttribute("password") +"' ";
   rs=st.executeQuery(sql);
  while(rs.next())
           {
  wrong1=wrong1+1;
  }
   total_question1=wrong1 + correct1;


%>

<form action="r12th" method="post">
  <tr>
    <td> 12th Result
       
    </td>
    <td><%=total_question1%></td>
    <td><%=correct1%></td>
  <input type="hidden" name="marks" value="<%=correct1%>">
    <td><%=wrong1%></td>
    <td><input type="submit" name="btn" class="btn btn-primary" value="Suggestion"  style="color:white;background-color:darkgreen;width:90px;height:33px;border-radius:12px;"></td>
    
   
  
  </tr>
   </form>
  
  <%
}catch(Exception ex)
             {
out.println(ex.toString());
}  
%>
     
    

</table>

                         
                 
            </div>
       
   </body>
    
 </html>

                 
