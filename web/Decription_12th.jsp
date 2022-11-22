<%-- 
    Document   : Decription_12th
    Created on : Jan 31, 2020, 10:34:41 PM
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
        <title>JSP Page</title>
        <link rel="Stylesheet" href="bootstrap.css">
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
                margin-top: 80px;
                background-color: white; 
                margin-left:300px;
                margin-right:300px;
                opacity: 0.9;
                border: 3px solid black;
                border-radius: 30px;
               
            }
            p{
                text-align: justify;
                text-justify: distribute;
                text-orientation: rotate-right;
                text-shadow: inherit;
                
            }
             h2{
                text-shadow: 2px 2px 2px blue;
            }
            h4{
                 margin-bottom: 0;
    padding-bottom: 0;
                
            }
                button{
                    height: 40px;
                    transition-property: height;
                    transition-duration: 0.3s;
                    transition-timing-function: linear;
                    width:80px;
                    background-color:white;
            }
            button:hover{
                    text-align: center;
                    height:50px;
            }
            .about_Para{
                column-count: 1;
                
            }
         </style>
    </head>
    <body>
         <%
        
        Connection cn=null;
        Statement st=null;
        
        
        String time="";
        
         try
              {      
          Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            cn=DriverManager.getConnection("jdbc:odbc:IQ_TEST");
            st=cn.createStatement();
            String sql="select * from Time_Master";
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
                               {
                time=rs.getString("Time");
                                                       
                  }
            //out.println(time);
            session.setAttribute("time", time);
                       }catch(Exception ex)
                       {
    out.println(ex.toString());
    }
 %>
        <form action="Decripition_10th" name="Decripition_10th" method="Post">  
            <input type="hidden" name="Stream" value="<%=session.getAttribute("Stream")%>">
            <div class="jambotron">  <br>     
        <center><h1><b>TEST INSTRUCTION</b></h1></center><br>
        <div class="about_Para">
        <p > <b>
                &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp; This is an 12 th student career guidance test. In this test includes  questions 
           to solve by <br> &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; the students  and on the basis of this test we will give suggestion to choose a perfect  
           career option. <br> &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;In this test includes 50 questions. 1 mark for each question. 
           <br> &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;  &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;In this test includes aptitude test, logical resonance,  mathematics, 
           science, history, geography <br> &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;questions. Students solve this question in limited time. Click on option which 
           you choose if you change <br> &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;your answer then simply click on this other option. For going to next question click 
           on next page. When <br> &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; test is solve click on submit button to end test and then check your  guidance or suggestion 
           about  your <br> &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;career option on the basis of this test marks. </b> <br><br>
           
        </p> </div>
          <center>  <h2>All The Best !</h2></center> <br>
         <div class="row">
           <div class="col-sm-4"></div>
           <div class="col-sm-3">
           <button input="submit" name="btn_submit" value="Cancel" class="btn btn-danger" ><a href="stream.jsp" style="color:white;">Cancel</a></button>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
           </div><button type="submit" name="bttn" value="Next"   class="btn btn-success" ><a href="Student_Question_Sheet.jsp"style="color:white;">Next</a></button>        
             <br><br>           
            </div> 
        
        </div>
       
         </form>
    </body>
</html>