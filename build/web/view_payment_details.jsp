<%-- 
    Document   : view_payment_details
    Created on : Dec 4, 2019, 10:04:10 PM
    Author     : admin
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
        <title>Payment_Table</title>
        <style>
#Payment {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#Payment td, #Payment th {
  border: 2px solid #ddd;
  padding: 10px;
}

#Payment tr:nth-child(even){background-color: #f2f2f2;}

#Payment tr:hover {background-color: #ddd;cursor: pointer;}

#Payment th {
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
        <h1>Payment Report</h1>
 <table id="Payment">
  <tr>
    <th>P_id</th>
    <th>Bank_Name</th>
    <th>SixteenDNumber</th>
    <th>ThreeDNumber</th>
    <th>U_Name</th>
    <th>Date</th>
   </tr>
    <%
          Connection cn=null;
    Statement st=null;
    
    
    
    try
                       {       
          Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            cn=DriverManager.getConnection("jdbc:odbc:IQ_TEST");
            st=cn.createStatement();
            String sql="select * from Pay_ment";
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
                               {
                
    
%>
<tr>
    <td><%=rs.getString("P_id")%></td>
    <td><%=rs.getString("Bank_Name")%></td>
    <td><%=rs.getString("SixteenDNumber")%></td>
    <td><%=rs.getString("ThreeDNumber")%></td>
    <td><%=rs.getString("User_Name")%></td> 
    <td><%=rs.getString("date")%></td> 
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
