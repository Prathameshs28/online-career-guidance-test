<%-- 
    Document   : view_feeback
    Created on : Dec 4, 2019, 10:08:27 PM
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
        <title>view_feedback</title>
        <style>
#Feedback {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#Feedback td, #Feedback th {
  border: 2px solid #ddd;
  padding: 10px;
}

#Feedback tr:nth-child(even){background-color: #f2f2f2;}

#Feedback tr:hover {background-color: #ddd;cursor: pointer;}

#Feedback th {
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
        <h1>View Feedback</h1>
 <table id="Feedback">
  <tr>
    <th>U_id</th>
    <th>User Name</th>
    <th>Feedback Contain</th>
    </tr>
    <%
          Connection cn=null;
    Statement st=null;
    
    
    
    try
                       {       
          Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            cn=DriverManager.getConnection("jdbc:odbc:IQ_TEST");
            st=cn.createStatement();
            String sql="select * from Feedback";
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
                               {
                
    
%>
  <tr>
      <td><%=rs.getString("F_id")%></td>
    <td><%=rs.getString("Name")%></td>
    <td><%=rs.getString("Issues")%></td>
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
