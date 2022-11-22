/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author admin
 */
public class Admin_Regi extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
       PrintWriter out=resp.getWriter();
       
       String Admin_Name=req.getParameter("text_adminname");
       String Gender=req.getParameter("gender");
       String Contact_Number=req.getParameter("contact");
       String Email_Id=req.getParameter("Email");
       String User_Name=req.getParameter("Uname");
       String Password=req.getParameter("password");
       String C_Password=req.getParameter("Cpassword");
       String event=req.getParameter("btn_submit");
       
       out.println(Admin_Name);
       out.println(Gender);
       out.println(Contact_Number);
       out.println(Email_Id);
       out.println(User_Name);
       out.println(Password);
       out.println(C_Password);
    
       
       Database db=new Database();
       String result=db.Connectdb();
       out.println(result);
       
      

        if(event.equals("Regisition"))
        {
            try
            {
               String insert=db.Insert("insert into  Admin_Registration(Admin_name,gender,contact_number,Email_Id,User_name,password,c_password)values('"+Admin_Name.toString()+"','"+Gender.toString()+"','"+Contact_Number.toString()+"','"+Email_Id.toString()+"','"+User_Name.toString()+"','"+Password.toString()+"','"+C_Password.toString()+"') ");
               out.println(insert);
               resp.setContentType("text/html;charset=UTF-8");
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Record Inserted');");
                out.println("location='Admin_Registration.jsp';");
                out.println("</script>");
            }
            catch(Exception ex)
            {
                out.println(ex.toString());
            }
        }
        
        if(event.equals("Regisition"))
        {
           resp.sendRedirect("Admin_Login.jsp"); 
        }      
    }   
}
