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
@WebServlet(name = "Examination", urlPatterns = {"/Examination"})
public class Examination extends HttpServlet {

     Connection cn=null;
    Statement st=null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        
        PrintWriter out=resp.getWriter();
        
        
        String Exam_Type=req.getParameter("E_Type");
        
        String event=req.getParameter("btn_submit");
        
        HttpSession session=req.getSession();
        
        out.println(Exam_Type);
        
    
       Database db=new Database();
       String result=db.Connectdb();
       out.println(result);   
       
   
       if(event.equals("Next"))
      {
          session.setAttribute("etype", Exam_Type);
          resp.sendRedirect("Add_Question.jsp");
         
    }
    }
}
