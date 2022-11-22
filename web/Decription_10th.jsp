<%-- 
    Document   : Decription_10th
    Created on : Jan 24, 2020, 7:46:53 PM
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
        <title></title>
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
                margin-top: 50px;
                background-color: white; 
                margin-left:300px;
                margin-right:300px;
                opacity: 0.9;
                border: 3px solid black;
                border-radius: 30px;
               
            }
            .p{
                text-align: justify;
                text-justify: distribute;
                text-orientation: rotate-right;
                text-shadow: inherit;
            }
             h2{
                text-shadow: 2px 2px 2px blue;
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
           // out.println(time);
            session.setAttribute("time", time);
                       }catch(Exception ex)
                       {
    out.println(ex.toString());
    }
 %>
        <form action="descrioption" name="Decripition_10th" method="Post">       
            <div class="jambotron">
            
                <input type="hidden" name="qno" value="<%=session.getAttribute("qno")%>">
        <center><h1><b>TEST INSTRUCTION</b></h1></center><br><br>
       
       <div class="about_Para">
        <p > <b>
                &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp; This is an 10 th student career guidance test. In this test includes  questions 
           to solve by <br> &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; the students  and on the basis of this test we will give suggestion to choose a perfect  
           career option. <br> &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;In this test includes 50 questions. 1 mark for each question. 
           <br> &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;  &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;In this test includes aptitude test, logical resonance,  mathematics, 
           science, history, geography <br> &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;questions. Students solve this question in limited time. Click on option which 
           you choose if you change <br> &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;your answer then simply click on this other option. For going to next question click 
           on next page. When <br> &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; test is solve click on submit button to end test and then check your  guidance or suggestion 
           about  your <br> &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;career option on the basis of this test marks. </b> <br><br>
           
        </p> </div>
        <center>  <h2>All The Best !</h2></center> <br><br>
           <div class="row">
           <div class="col-sm-4"></div>
           <div class="col-sm-3">
        <button input="submit" value="Next" class="btn btn-danger" class="form-control"> <a href="User_Examination.jsp"style="color: white">Cancel</a></button>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
           </div><button input="submit" value="Next" class="btn btn-success" class="form-control"><a href="Student_Question_Sheet.jsp" style="color: white">Next</a></button> 
             <br><br>           
            </div> 
        
        </div>
       
         </form>
    </body>
</html>
