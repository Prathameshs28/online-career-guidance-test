<%-- 
    Document   : U_Pannel
    Created on : Feb 4, 2020, 11:05:11 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
    <head>
        <title>User Panel</title>
        <meta charset="UTF-8">
        
         
         <style>
             body{
     margin: 0px;
     padding:0px;
    font-family:sans-serif;
   background:url(website_contact_background.png);   
   background-repeat: no-repeat;
   background-size: cover;
    top:70%;
    left:20%;
    
}

.home h3{   
    font-family: Arial;
    color:brown;
    margin:0%;
    padding:0%;
    font-size: 50px;
    margin-bottom: 50px;
    padding: 3px;
}
.home{
    position: static;
    top:50%;
    left:50%;
    color:black;
    
}

   #sbox{
       top:20%;
    left:58%;
     position: absolute; 
     padding: 6px;
    border: 3px solid skyblue;
     width:25%;
     font-weight: bold;
     border-radius: 30px;
}
   #sbtn {
             
   color:black;
   border:3px solid skyblue;
       position: absolute; 
        top:20%;
       left:85%;    
       width:10%;
     cursor: pointer;  
     padding: 6px;
     font-weight: bold;
     border-radius: 30px;
    
     
           
}



.adminlog button{
     background:none;    
   color: Black;
   font-weight: bold;
    position:absolute;
    top:16%;
    left:5%;
    width:19%;
    height: 45px;
    border:2px solid brown;
    padding:10px;
    cursor: pointer;
    border-radius: 30px;
}
.userlog button{
      background:none;  
   color:Black;
   font-weight: bold;
    position:absolute;
    top:28%;
    left:5%;
    width:19%;
    height: 45px;
    border:2px solid brown;
    padding:10px;
    cursor: pointer;
    border-radius: 30px;
}
.cp button{
          background:none;
   color:black;
   font-weight: bold;
    position:absolute;
    top:41%;
    left:5%;
    width:19%;
    height: 45px;
     border:2px solid brown;
     padding:10px;
     cursor: pointer;
     border-radius: 30px;
}
.about button{
          background:none;
   color:black;
   font-weight: bold;
    position:absolute;
    top:54%;
    left:5%;
    width:19%;
    height: 45px;
    border:2px solid brown;
    padding:10px;
    cursor: pointer;
    border-radius: 30px;
}
.con button{
          background:none;
   color:black;
   font-weight: bold;
    position:absolute;
    top:67%;
    left:5%;
    width:19%;
    height: 45px;
     border:2px solid brown;
     padding:10px;
     cursor: pointer;
     border-radius: 30px;
}
.hl button{
          background:none;
   color:black;
   font-weight: bold;
    position:absolute;
    top:80%;
    left:5%;
    width:19%;
    height: 45px;
     border:2px solid brown;
     padding:10px;
     cursor: pointer;
     border-radius: 30px;
}

.contact button{
          background:none;
   color:black;
   font-weight: bold;
    position:absolute;
    top:92%;
    left:5%;
    width:19%;
    height: 45px;
     border:2px solid brown;
     padding:10px;
     cursor: pointer;
     border-radius: 30px;
}
.test button{
          background:none;
   color:black;
   font-weight: bold;
    position:absolute;
    top:40%;
    left:50%;
    width:19%;
    height: 45px;
     border:2px solid brown;
     padding:10px;
     cursor: pointer;
     border-radius: 30px;
}


  button:hover{
                    
                    width:21%;
                    height: 60px;
            }


         </style>
    </head>
    <body>
        <form name="UP" action="User_Panel" method="post">
         <div class="home">
            
                 
                 
            
          <h3> <marquee> Choose Your Perfect Career....</marquee>   </h3> 
           <div class="adminlog">
                 <button  type="submit" name="btn" value="My Profile"style="background-color:greenyellow;">My Profile</button> 
           </div>
           
           <div class="userlog">
                  <button  type="submit" name="btn" value="Test Details"style="background-color:greenyellow;">Test Details</button>
              </div>
              
           <div class="about">
               <button  type="submit" name="btn" value="Homepage" style="background-color:greenyellow;"> Homepage </button>
           </div>
           
           <div class="contact">
               <button  type="submit" name="btn" value="LogOut" style="background-color:greenyellow;">LogOut</button>
           </div>
          <div class="cp">
              <button  type="submit" name="btn" value="Change Password" style="background-color:greenyellow;">Change Password</button>
          </div>
          <div class="con">
              <button  type="submit" name="btn" value="Contact Us" style="background-color:greenyellow;">Contact Us</button>
          </div>
          <div class="hl">
              <button  type="submit" name="btn" value="Help" style="background-color:greenyellow;">Help</button>
          </div>
           <div class="test">
               <button  type="submit" name="btn" value="Give Test" style="background-color:green;"><a href="User_Examination.jsp" style="color: black;">Give Test</a></button>
          </div>
                  
          
             </div>
                 
        </form>
    </body>
</html>
