/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author admin
 */
@WebServlet(name = "User_Registration", urlPatterns = {"/User_Registration"})
public class User_Registration extends HttpServlet {

  
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        PrintWriter out=resp.getWriter();
        
        String First_Name=req.getParameter("txt_Fname");      
        String Middle_Name=req.getParameter("txt_Mname");
        String Last_Name=req.getParameter("txt_Lname");
        String Address=req.getParameter("txt_add");
        String Age=req.getParameter("txt_Age");
        String Gender=req.getParameter("gender");
        String DOB=req.getParameter("dob");
        String Contact_Number=req.getParameter("txt_cono");
        String Email_Id=req.getParameter("email");
        String User_Name=req.getParameter("U_Name");
        String Password=req.getParameter("Password");
        String C_Password=req.getParameter("C_Password");
        String Photo=req.getParameter("Photo");
        String SPhoto=req.getParameter("SPhoto");
        String event=req.getParameter("btnn");
        
        
        out.println(First_Name);
        out.println(Middle_Name);
        out.println(Last_Name);
        out.println(Address);
        out.println(Age);
        out.println(Gender);
        out.println(DOB);
        out.println(Contact_Number);
        out.println(Email_Id);
        out.println(User_Name);
        out.println(Password);
        out.println(C_Password); 
        out.println(Photo);
        out.println(SPhoto);
        
         Database db=new Database();
       String result=db.Connectdb();
       out.println(result);
        
       if(event.equals("Registration"))
       {
           try
           {    
               Date d=new Date();
               SimpleDateFormat dates=new SimpleDateFormat("yyyy-MM-dd");
               String date1=dates.format(d);
               
               String insert=db.Insert("insert into User_Registration(F_Name,M_Name,L_Name,Address,Age,Gender,DOB,C_Number,Email_ID,User_Name,Password,C_Password,Photo,sphoto,date)values('"+First_Name.toString()+"','"+Middle_Name.toString()+"','"+Last_Name.toString()+"','"+Address.toString()+"','"+Age.toString()+"','"+Gender.toString()+"','"+DOB.toString()+"','"+Contact_Number.toString()+"','"+Email_Id.toString()+"','"+User_Name.toString()+"','"+Password.toString()+"','"+C_Password.toString()+"','Profilepics/"+Photo.toString()+"','Sign/"+SPhoto.toString()+"','"+date1.toString()+"')");
               out.println(insert);
              resp.setContentType("text/html;charset=UTF-8");
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Registration Successfully');");
                out.println("location='Payment.jsp';");
                out.println("</script>");
           }
           catch(Exception ex)
           {
               out.println(ex.toString());
           }
       }
       if(event.equals("Cancel"))
               {
                   resp.sendRedirect("Login.jsp");
               }      
                  
    }
}
