<%-- 
    Document   : student_result
    Created on : Mar 6, 2020, 7:46:49 PM
    Author     : admin
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>student_result</title>
     <style>
#studuent {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#studuent td, #studuent th {
  border: 2px solid #ddd;
  padding: 10px;
}

#studuent tr:nth-child(even){background-color: #f2f2f2;}

#studuent tr:hover {background-color: #ddd;cursor: pointer;}

#studuent th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #4CAF50;
  color: black;
}

</style>
<link rel="Stylesheet" href="bootstrap.css">
    </head>
    <body>
        <h1>Student Result Details</h1>
 <table id="studuent">
  <tr>
    <th>SR_ID</th>
    <th>Q_No</th>
    <th>Question</th>
    <th>Selected_Option</th>
    <th>C_Ans</th>
    <th>Marks</th>
    <th>User_Name</th>
    <th>Exam_Type</th>
   </tr>
     <%
          Connection cn=null;
    Statement st=null;
    
    
    
    try
                       {       
          Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            cn=DriverManager.getConnection("jdbc:odbc:IQ_TEST");
            st=cn.createStatement();
            String sql="select * from student_result";
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
                               {
                
    
%>
  <tr>
    <td><%=rs.getString("SR_ID")%></td>
   <td><%=rs.getString("Q_No")%></td>
    <td><%=rs.getString("Question")%></td>
    <td><%=rs.getString("Selected_Option")%></td>
     <td><%=rs.getString("C_Ans")%></td>  
    <td><%=rs.getString("Marks")%></td>  
    <td><%=rs.getString("User_Name")%></td>
    <td><%=rs.getString("Exam_Type")%></td>  
  </tr>
  <%
    
           }
            
    
    }catch(Exception ex)
                       {
    out.println(ex.toString());
    }  
%>
</table>        
    </body>
</html>

