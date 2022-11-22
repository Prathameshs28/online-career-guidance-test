/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.awt.Event;
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
@WebServlet(name = "U_Examination", urlPatterns = {"/U_Examination"})
public class U_Examination extends HttpServlet {

    
    
     protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
         
         PrintWriter out=resp.getWriter();
         HttpSession session=req.getSession();
        String Exam_Type=req.getParameter("E_Type");
       String event=req.getParameter("btn_submit");
        
        
        out.println(Exam_Type);
        
         Database db=new Database();
       String result=db.Connectdb();
       out.println(result);
       //HttpSession session=req.getSession();
       
        
       
        if(event.equals("Back"))
       {
           resp.sendRedirect("Home_Page.jsp");
       }
       
       if(event.equals("Continue"))
       {
           
           
           try
          {
              
          Connection cn=null;
          Statement st=null;
          Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            cn=DriverManager.getConnection("jdbc:odbc:IQ_TEST");
            st=cn.createStatement();
            String sql="select * from student_result where User_Name='"+session.getAttribute("username") +"' and    Password='"+session.getAttribute("password") +"' and Exam_Type='"+Exam_Type.toString()+"'";
            ResultSet rs=st.executeQuery(sql);
            if(rs.next())
            {
               resp.setContentType("text/html;charset=UTF-8");
                         out.println("<script type=\"text/javascript\">");
                         out.println("alert('Sorry...! Alredy You Have Done Your Exam');");
                         out.println("location='User_Examination.jsp';");
                         out.println("</script>");
          
            }
            else
            {
        session.setAttribute("etype", Exam_Type);
        session.setAttribute("qno", "1");
        
        if(Exam_Type.equals("After 10th"))
        {
            session.setAttribute("etype", Exam_Type);
        session.setAttribute("qno", "1");
        session.setAttribute("Stream", ".");
        resp.sendRedirect("Decription_10th.jsp");
        
        }
        if(Exam_Type.equals("After 12th"))
        {
            session.setAttribute("etype", Exam_Type);
        session.setAttribute("qno", "1");
        resp.sendRedirect("stream.jsp");
        }
            }
            }catch(Exception ex)
          {
          out.println(ex.toString());
          }
       
     
       
     }
       }
     }
