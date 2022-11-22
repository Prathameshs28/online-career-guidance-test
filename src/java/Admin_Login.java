/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author admin
 */
@WebServlet(name = "Admin_Login", urlPatterns = {"/Admin_Login"})
public class Admin_Login extends HttpServlet {
     protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
PrintWriter out=resp.getWriter();
        
        String username=req.getParameter("text_name");
        String password=req.getParameter("text_password");
        String event=req.getParameter("rgister");
        
        
        out.println(username);
        out.println(password);
    
         Database db=new Database();
       String result=db.Connectdb();
       out.println(result);
       
       
       
       Connection cn=null;
       Statement st=null;
       
        
        
            if(event.equals("Login"))
        {
              try
     {
          Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        cn=DriverManager.getConnection("jdbc:odbc:IQ_TEST");
     st=cn.createStatement();
     String sql="select User_name,password from Admin_Registration where User_name='"+username.toString()+"' and password='"+password.toString()+"'";
     ResultSet rs=st.executeQuery(sql);
     if(rs.next())
     {
     resp.sendRedirect("A_HomePage.jsp");
     }
     else
     
     {
     
      resp.setContentType("text/html;charset=UTF-8");
       out.println("<script type=\"text/javascript\">");
     out.println("alert('Login Failed');");
   out.println("location='Admin_Login.jsp';");
   out.println("</script>");
     }
     }catch(Exception ex)
     {
     out.println(ex);
     }
    
    
}
            if(event.equals("Register"))
            {
                resp.sendRedirect("Admin_Registration.jsp");
            }
     
}
       
}
