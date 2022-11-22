<%-- 
    Document   : Add_Question
    Created on : Dec 26, 2019, 11:13:49 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Question</title>
        <link rel="Stylesheet" href="bootstrap.css">
        <script>
           function clear()
            {
                document.getElementById("ei").value="1";
                document.getElementById("qn").value="";
                document.getElementById("q").value="";
                document.getElementById("op1").value="";    
                document.getElementById("op2").value="";
                document.getElementById("op3").value="";
                document.getElementById("op4").value="";
                document.getElementById("co").value="";
        }
            
        </script>
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
                margin-left:300px;
                margin-right:300px;
                opacity: 0.9;
                border: 3px solid black;
                border-radius: 30px;
               
            }
             h2{
                text-shadow: 2px 2px 2px blue;
            }
            button{
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
        <form action="Add_Question" name="Add_Question" method="post">
        <script src="validation.js"></script>
        <br><br><br>
        <div class="jambotron">
        <h2><center>Add Question</center></h2><br><br>
        <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-4">
              
                <label>Exam Id-:</label>
            </div>
                <div class="col-sm-4">
                    <input type="text" id="ei" name="Exam_Id" value="<%=request.getAttribute("E_type")%>" class="form-control">
                </div>
            </div><br><br>
            <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-4">
                <label>Question Number-:</label>
            </div>
                <div class="col-sm-4">
                    <input type="text" class="form-control" id="qn" value="<%=request.getAttribute("Q_no")%>" name="Q_Number" onkeypress="javascript:return isNumber(event)">
                </div>
            </div><br><br>
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-4">
                     <label>Question -:</label>
                </div>
            </div><br>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                    <textarea row="3" col="10" id="q" name="Question"   class="form-control"><%=request.getAttribute("Ques")%></textarea>
                </div>
            </div><br><br>
            <div class="row">
                <div class="col-sm-3"></div>
                <div class="col-sm-1"><label>A)</label></div>
                <div class="col-sm-4"><input type="text" id="op1" value="<%=request.getAttribute("oa")%>" name="Option_A"class="form-control"></div>                
                </div><br><br>
                <div class="row">
                <div class="col-sm-3"></div>
                <div class="col-sm-1"><label>B)</label></div>
                <div class="col-sm-4"><input type="text" id="op2" value="<%=request.getAttribute("ob")%>"  name="Option_B" class="form-control"></div>                
                </div><br><br>
                <div class="row">
                <div class="col-sm-3"></div>
                <div class="col-sm-1"><label>C)</label></div>
                <div class="col-sm-4"><input type="text" id="op3" value="<%=request.getAttribute("oc")%>" name="Option_C" class="form-control"></div>                
                </div><br><br>
                <div class="row">
                <div class="col-sm-3"></div>
                <div class="col-sm-1"><label>D)</label></div>
                <div class="col-sm-4"><input type="text" id="op4" value="<%=request.getAttribute("od")%>" name="Option_D" class="form-control"></div>                
                </div><br><br>
                <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-2"><label>Correct</label></div>
                <div class="col-sm-4"><input type="text" id="co" value="<%=request.getAttribute("co")%>" name="Option_Corect" class="form-control"></div>                
                </div><br><br>
                <div class="row">
                    <div class="col-sm-1"></div>
                    <div class="col-sm-2">
                        <button input="submit" name="btn_submit" value="Save" class="btn btn-success" style="width:80px;">Save</button>
                    </div>
                    <div class="col-sm-2">
                        <button input="submit"  name="btn_submit" value="Update" class="btn btn-primary" style="width:80px;">Update</button>
                    </div>
                    <div class="col-sm-2">
                        <button input="submit"  name="btn_submit" value="Delete" class="btn btn-danger" style="width:80px;">Delete</button>
                    </div>
                   <div class="col-sm-2">
                       <button input="submit"  name="btn_submit" value="Search" class="btn btn-primary" style="width:80px;">Search</button>
                    </div>
                     <div class="col-sm-2">
                         <button input="submit" name="btn_submit" value="Exit" class="btn btn-danger" style="width:80px;">Exit</button>
                    </div><br><br><br>                   
                </div>
            </div>
                <%
                if(request.getAttribute("Ques")==null)
                                       {
                    %>
                    <script>
                        clear();
                    </script>
                    <%
                                       }
                %>
        </form>
      </body>
</html>
