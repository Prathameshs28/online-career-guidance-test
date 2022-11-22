
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
import javax.servlet.http.HttpSession;

/**
 *
 * @author admin
 */
@WebServlet(name = "U_Login", urlPatterns = {"/U_Login"})
public class U_Login extends HttpServlet {
 protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    
        PrintWriter out=resp.getWriter();
        
        String username=req.getParameter("text_name");
        String password=req.getParameter("text_password");
        String event=req.getParameter("btn_submit");
        
        
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
                    String sql="select U_id,User_Name,Password,F_name,M_name,L_name,Photo from User_Registration where User_Name='"+username.toString()+"' and Password='"+password.toString()+"'";
                    ResultSet rs=st.executeQuery(sql);
                    if(rs.next())
                    {
                        String id=rs.getString("U_id");
                        String fname=rs.getString("F_name");
                        String mname=rs.getString("M_name");
                        String lname=rs.getString("L_name");
                        String photo=rs.getString("Photo");
                        HttpSession session=req.getSession();
                        session.setAttribute("username", username);
                        session.setAttribute("password", password);
                        session.setAttribute("uid", id);
                        session.setAttribute("fname", fname);
                         session.setAttribute("mname", mname);
                          session.setAttribute("lname", lname);
                          session.setAttribute("photo", photo);
                        resp.sendRedirect("Home_Page.jsp");
                    }
                    else
                    {     
                         resp.setContentType("text/html;charset=UTF-8");
                         out.println("<script type=\"text/javascript\">");
                         out.println("alert('Login Failed Please check your user name and password');");
                         out.println("location='Login.jsp';");
                         out.println("</script>");
                    }
             }
            catch(Exception ex)
            {
                out.println(ex);
            }   
              
   }
              if(event.equals("Sign_in"))
              {
                  resp.sendRedirect("User_Registration.jsp");
              }  
 }
}