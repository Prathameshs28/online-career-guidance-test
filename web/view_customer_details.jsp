<%-- 
    Document   : view_customer_details
    Created on : Dec 4, 2019, 9:37:12 PM
    Author     : admin
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>view_customer_details</title>
   <style>
#customer {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customer td, #customer th {
  border: 2px solid #ddd;
  padding: 10px;
}

#customer tr:nth-child(even){background-color: #f2f2f2;}

#customer tr:hover {background-color: #ddd;cursor: pointer;}

#customer th {
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
        <h1>Student Details</h1>
 <table id="customer">
  <tr>
    <th>u_id</th>
    <th>Name</th>
    <th>Address</th>
     <th>Age</th>
    <th>Gender</th>
    <th>Contact Number</th>    
    <th>Email_Id</th>
    <th>Student Photo</th>
   <th>Student Sign</th>
    </tr>
     <%
          Connection cn=null;
    Statement st=null;
    
    
    
    try
                       {       
          Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            cn=DriverManager.getConnection("jdbc:odbc:IQ_TEST");
            st=cn.createStatement();
            String sql="select * from User_Registration";
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
                               {
                
    
%>
  <tr>
    <td><%=rs.getString("U_id")%></td>
    <td><%=rs.getString("F_name")%> <%=rs.getString("M_name")%> <%=rs.getString("L_name")%></td>
    <td><%=rs.getString("Address")%></td>
    <td><%=rs.getString("Age")%></td>
    <td><%=rs.getString("Gender")%></td>   
    <td><%=rs.getString("C_Number")%></td>
    <td><%=rs.getString("Email_ID")%></td>
    <td><img src="<%=rs.getString("Photo")%>" height="100" width="100"></td>
    <td><img src="<%=rs.getString("sphoto")%>" height="100" width="100" ></td>
    
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
