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

/**
 *
 * @author admin
 */
@WebServlet(name = "Forgot_Password", urlPatterns = {"/Forgot_Password"})
public class Forgot_Password extends HttpServlet {

    Connection cn=null;
    Statement st=null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        
        PrintWriter out=resp.getWriter();
        
        String username=req.getParameter("User_Name");
        String password=req.getParameter("Password");
        String Confirm_Password=req.getParameter("C_Password");
        String event=req.getParameter("btn_submit");
        
        
        out.println(username);
        out.println(password);
        out.println(Confirm_Password);
    
        Database db=new Database();
       String result=db.Connectdb();
       out.println(result);
         HttpSession session=req.getSession();
        if(event.equals("Save"))
        {
            try
            {
                String update = db.Update("update User_Registration set Password='"+password.toString()+"', C_Password='"+Confirm_Password.toString()+"' where User_Name='" +username.toString()+ "'");
                out.println(update);
                resp.setContentType("text/html;charset=UTF-8");
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Password Upadated');");
                out.println("location='Login.jsp'");
                out.println("</script>");
            }
           catch(Exception ex)
           {
               out.println(ex.toString());
           }
        }
       if(event.equals("Reset"))
      {
          try
          {
            resp.sendRedirect("Login.jsp");  
          }
          catch(Exception ex)
          {
              out.println(ex.toString());
          }
      }
    }
}
