<%-- 
    Document   : Student_Question_Sheet
    Created on : Dec 31, 2019, 9:16:44 AM
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
        <title>Student Question Sheet</title>
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
                background-color: white; 
                margin-left:350px;
                margin-right:350px;
                opacity: 0.9;
                border: 3px solid black;
                border-radius: 30px;
               
            }
             h2{
                text-shadow: 2px 2px 2px blue;
            }
            button{
                    top:30px;
                    height: 40px;
                    transition-property: height;
                    transition-duration: 0.3s;
                    transition-timing-function: linear;
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
    
    String qno="";
    String qustion="";
    String op1="";
    String op2="";
    String op3="";
    String op4="";
    String ans="";
    
    try
                       {
        
        
          Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            cn=DriverManager.getConnection("jdbc:odbc:IQ_TEST");
            st=cn.createStatement();
            String sql="select * from Add_Question where Q_Number='"+session.getAttribute("qno") +"' and E_type='"+session.getAttribute("etype") +"'";
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
                               {
                
                
            
            qno=rs.getString("Q_Number");
            qustion=rs.getString("Question");
            op1=rs.getString("O_A");
            op2=rs.getString("O_B");
            op3=rs.getString("O_C");
            op4=rs.getString("O_D");
            ans=rs.getString("C_O");
           

            
           }
            
    
    }catch(Exception ex)
                       {
    out.println(ex.toString());
    }

%>
         <form action="Student_Q_Sheet" method="post" name="Student_Q_Sheet">
             <script>
                 
             </script>
         <br>
         <div class="row">
            <div class="col-sm-1"></div>
             <div class="col-sm-2">
                 <h4>Test Type-:</h4>
             </div>
                 <div class="col-sm-2">
                     <input type="text" name="etype" class="form-control" value="<%=session.getAttribute("etype")%>" readonly>
                 </div> 
             <div class="col-sm-3"></div>
             <div class="col-sm-2">
                 <h4>Time</h4>
             </div>
             <div class="col-sm-2">
                 <input type="hidden" value="<%=session.getAttribute("time")%>" id="time">
                 
                  <center><h4 style="margin-top:0px">Time Left</h4></center><p id="demo" style="" ></p>
                  <img style="margin-left: 50px;margin-top: 10px" src="<%=session.getAttribute("photo")%>" width="100" height="100"> 
             <script>
// Set the date we're counting down to
var time=document.getElementById("time").value;
var countDownDate = new Date(time).getTime();
//Mar, 5 2019 16:30:00
// Update the count down every 1 second
var x = setInterval(function() {

  // Get todays date and time
  var now = new Date().getTime();
    
  // Find the distance between now and the count down date
  var distance = countDownDate - now;
    
  // Time calculations for days, hours, minutes and seconds
  var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
  var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
  var seconds = Math.floor((distance % (1000 * 60)) / 1000);
    
  // Output the result in an element with id="demo"
  document.getElementById("demo").innerHTML =hours +"h "
  + minutes + "m " + seconds + "s ";
    
  // If the count down is over, write some text 
  if (distance < 0) {
    clearInterval(x);
    document.getElementById("demo").innerHTML = "Exam Is Over";
  }
}, 1000);
</script>
         </div>
           </div><br>
                <div class="jambotron" style="margin-top: -100px">
             <h2><center>Test</center></h2><br><br>
         <div class="row">
             <div class="col-sm-1"></div>
            <div class="col-sm-2"><label>Q.Number-:</label></div>
            <div class="col-sm-1">
                <input type="text" name="Q_Number" value="<%=session.getAttribute("qno")%>"  onkeypress="javascript:return isNumber(event)" readonly="" >
            </div>  
         </div><br> 
              <div class="row">
                  <div class="col-sm-1"></div>
                 <div class="col-sm-2"><label>Question -:</label></div>
                <div class="col-sm-4">
                     
                </div>
            </div><br>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-9">
                 <textarea row="3" col="10" name="Question"  class="form-control"><%=qustion%></textarea>
                </div>
            </div><br><br>
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-1">A)</div>
                <div class="col-sm-3"><input type="radio" name="option1" value="<%=op1%>"><%=op1%></div>
                           
                </div><br><br>
                <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-1">B)</div>
                <div class="col-sm-2"><input type="radio" name="option1" value="<%=op2%>"><%=op2%></div>     
                </div><br><br>
                <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-1">C)</div>
                <div class="col-sm-2"><input type="radio" name="option1" value="<%=op3%>"><%=op3%></div>
                              
                </div><br><br>
                <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-1">D)</div>
                <div class="col-sm-2"><input type="radio" name="option1" value="<%=op4%>"><%=op4%></div>
                
                <input type="hidden" name="ans" value="<%=ans%>">
               
              
                </div><br><br>
                    <div class="row">
                    <div class="col-sm-1"></div>
                    <div class="col-sm-2">
                        
                    </div>
                    <div class="col-sm-2">
                        <input type="submit" name="btn_submit" value="Previous" class="btn btn-primary" style="width:80px;">
                    </div>
                    <div class="col-sm-2">
                      <input type="submit" name="btn_submit" value="Next" class="btn btn-primary" style="width:80px;">
                    </div>
                   <div class="col-sm-2">
                        <input type="submit" value="Submit" name="btn_submit" class="btn btn-success" style="width:70px;">
                    </div>               
                </div><br><br>
            </div>
     </form>
    </body>
</html>
