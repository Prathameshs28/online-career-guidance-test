<%-- 
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
  <li><a class="active" href="home.html">Home</a></li>
  <li><a href="home.html">Logout</a></li>
 
 
</ul>
    </head>
     <body style="background-image: url(p.jpg);background-size:cover;background-repeat: no-repeat">
        
        <form name="result" action="result" method="post">
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
                       <label> Full Name:</label>
                    </div>
                   <div class="col-sm-6">
                       <label><%=session.getAttribute("full_name")%></label>
                   </div>
                   <div class="col-sm-2"></div>
                 </div>
 
                 <br>
                 <div class="row">
                   <div class="col-sm-2"></div>
                   <div class="col-sm-2">
                       <label> Seat No:</label>
                    </div>
                   <div class="col-sm-6">
                      <label><%=session.getAttribute("seatno")%></label>
                       
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
    <th>Obtained Marks</th>
    <th>Result</th>
    <th>Total Percentage:</th>
     <th>Final Result</th>
    
  
      
 
  </tr>
  
  <%
  
    Connection cn=null;
    Statement st=null;  
     float avg=0.0f;
try
                     {
    int correct=0;
    int wrong=0;
    int total_question=0;
  Class.forName("com.mysql.jdbc.Driver");
  cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/exam","root","root");
  st=cn.createStatement();
  String sql="select full_name,seat_no from registration where user_id='"+session.getAttribute("uid") +"' and pass='"+session.getAttribute("pass") +"'";
               ResultSet rs1=st.executeQuery(sql);
                if(rs1.next())
                {
          // out.println("true");
    session.setAttribute("full_name",rs1.getString("full_name") );
    session.setAttribute("seatno", rs1.getString("seat_no"));
       }
   sql="select * from exam_page where marks='1' and user_id='"+session.getAttribute("uid") +"' and pass='"+session.getAttribute("pass") +"' and exam_name='Numerical Ability'";
  ResultSet rs=st.executeQuery(sql);
  while(rs.next())
           {
  correct=correct+1;
  }
   sql="select * from exam_page where marks='0' and user_id='"+session.getAttribute("uid") +"' and pass='"+session.getAttribute("pass") +"' and exam_name='Numerical Ability'";
   rs=st.executeQuery(sql);
  while(rs.next())
           {
  wrong=wrong+1;
  }
   avg=(100*correct)/20;
   session.setAttribute("navg", avg);
   //out.println(wrong);
total_question=correct+wrong;
float total_perc=Float.parseFloat(session.getAttribute("navg").toString())+Float.parseFloat(session.getAttribute("gavg").toString())+Float.parseFloat(session.getAttribute("lavg").toString());
total_perc=total_perc/3;
session.setAttribute("total_perc", total_perc);

String result="";
if(total_perc>35.00)
       {
result="Pass";
}
else
       {
result="Fail";
}


%>
  <tr>
    <td> Numerical Ability
       
    </td>
    <td><%=total_question%></td>
    <td><%=correct%></td>
    <td><%=correct%></td>
    <td><%=avg%></td>
    <td><%=total_perc%></td>
    <td><%=result%></td>
  
  </tr>
  <%
}catch(Exception ex)
             {
out.println(ex.toString());
}  
%>
  
  <%
  
try
                     {
    int correct=0;
    int wrong=0;
    int total_question=0;
  float avg1=0.0f;
  Class.forName("com.mysql.jdbc.Driver");
  cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/exam","root","root");
  st=cn.createStatement();
  String sql="select * from exam_page where marks='1' and user_id='"+session.getAttribute("uid") +"' and pass='"+session.getAttribute("pass") +"' and exam_name='General English'";
  ResultSet rs=st.executeQuery(sql);
  while(rs.next())
           {
  correct=correct+1;
  }
   sql="select * from exam_page where marks='0' and user_id='"+session.getAttribute("uid") +"' and pass='"+session.getAttribute("pass") +"' and exam_name='General English'";
   rs=st.executeQuery(sql);
  while(rs.next())
           {
  wrong=wrong+1;
  }
   //out.println(wrong);
total_question=correct+wrong;
avg1=(correct*100)/20;
session.setAttribute("gavg", avg1);
%>
  <tr>
    <td>General English</td>
    <td><%=total_question%></td>
    <td><%=correct%></td>
    <td><%=correct%></td>
    <td><%=avg1%>%</td>
  </tr>
  <%
}catch(Exception ex)
             {
out.println(ex.toString());
}  
%>
  
  <%
  
try
                     {
    int correct=0;
    int wrong=0;
    int total_question=0;
    float avg2=0.0f;
  Class.forName("com.mysql.jdbc.Driver");
  cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/exam","root","root");
  st=cn.createStatement();
  String sql="select * from exam_page where marks='1' and user_id='"+session.getAttribute("uid") +"' and pass='"+session.getAttribute("pass") +"' and exam_name='Logical Reasoning'";
  ResultSet rs=st.executeQuery(sql);
  while(rs.next())
           {
  correct=correct+1;
  }
   sql="select * from exam_page where marks='0' and user_id='"+session.getAttribute("uid") +"' and pass='"+session.getAttribute("pass") +"' and exam_name='Logical Reasoning'";
   rs=st.executeQuery(sql);
  while(rs.next())
           {
  wrong=wrong+1;
  }
   //out.println(wrong);
total_question=correct+wrong;
avg2=(correct*100)/20;
session.setAttribute("lavg", avg2);
%>
  <tr>
    <td>Logical Reasoning</td>
    <td><%=total_question%></td>
    <td><%=correct%></td>
    <td><%=correct%></td>
    <td><%=avg2%>%</td>
  </tr>
 
  <%
}catch(Exception ex)
             {
out.println(ex.toString());
}  
 float total_perc=Float.parseFloat(session.getAttribute("navg").toString())+Float.parseFloat(session.getAttribute("gavg").toString())+Float.parseFloat(session.getAttribute("lavg").toString());
total_perc=total_perc/3;
session.setAttribute("total_perc", total_perc);
String result="";
if(total_perc>35.00)
       {
result="Pass";
}
else
       {
result="Fail";
}


try
               {
  Class.forName("com.mysql.jdbc.Driver");
  cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/exam","root","root");
  st=cn.createStatement();
 String sql1="delete from result where seat_no= '"+session.getAttribute("seatno")+"' and full_name= '"+session.getAttribute("full_name")+"'";
 String sql="insert into result(seat_no,full_name,total_per,result) values('"+session.getAttribute("seatno").toString() +"','"+session.getAttribute("full_name") +"','"+total_perc+"','"+result+"')";
st.executeUpdate(sql1);
st.executeUpdate(sql);

}catch(Exception ex)
                                             {
               out.println(ex.toString());
               }
 

%>  
  
  
     
    

</table>

                         
                         
                     </div>
                     <div class="col-sm-2"></div>
                 </div>
                
                <br>
                <br>
                 <div class="row">
                   <div class="col-sm-3"></div>
                   <div class="col-sm-6">
                       <a href="home.html" class="btn btn-primary"  style="color:white;background-color:darkgreen;width:80px;height:33px;border-radius:12px;margin-left:100px "> Finish</a>
           
                               </div>
                    <div class="col-sm-3"></div>
                 </div>
            </div>
        </form>
   </body>
    
 </html>

                 
