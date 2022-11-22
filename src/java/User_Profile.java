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
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

/**
 *
 * @author admin
 */
@WebServlet(name = "User_Profile", urlPatterns = {"/User_Profile"})
public class User_Profile extends HttpServlet {

   

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
    
        Database db=new Database();
       String result=db.Connectdb();
       out.println(result);
       
       if(event.equals("Back"))
       {
           resp.sendRedirect("Home_Page.jsp");
           
       }
           HttpSession session=req.getSession();
        if(event.equals("Edit"))
        {   
            
            try
            {
                String update=db.Update("update User_Registration set M_name='"+Middle_Name.toString()+"',L_name='"+Last_Name.toString()+"',Address='"+Address.toString()+"',Age='"+Age.toString()+"',Gender='"+Gender.toString()+"',DOB='"+DOB.toString()+"',C_Number='"+Contact_Number.toString()+"',Email_ID='"+Email_Id.toString()+"' where User_Name='" + session.getAttribute("username") + "'");
                out.println(update);
                resp.setContentType("text/html;charset=UTF-8");
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Record Updated');");
                out.println("location='User_Profile.jsp';");
                out.println("</script>");
            }
            catch(Exception ex)
            {
                out.println(ex.toString());
            }
        }
    }
}
