/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(name = "Student_Q_Sheet", urlPatterns = {"/Student_Q_Sheet"})
public class Student_Q_Sheet extends HttpServlet {
 protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        
        PrintWriter out=resp.getWriter();
        
       
        String Qusetion_Number=req.getParameter("Q_Number");
        String Question=req.getParameter("Question");
        String radio=req.getParameter("option1");
        String etype=req.getParameter("etype");
        
        
         String cans=req.getParameter("ans");
        
       
        String event=req.getParameter("btn_submit");
        
        
        out.println(Qusetion_Number);
        out.println(Question);
        out.println(radio);
       
        out.println(cans);
        HttpSession session=req.getSession();
       
                
        
        Database db=new Database();
       String result=db.Connectdb();
       out.println(result);
       
       
       if(radio!=null)
       {
       
       
       if(event.equals("Next"))
      {
          try
          {
              int marks;
       if(radio.equals(cans))
       {
       marks=1;
       }else
       {
       marks=0;
       }
              String insert=db.Insert("insert into student_result(Q_No,Question,Selected_Option,C_Ans,Marks,User_Name,Password,Exam_Type)values('"+Qusetion_Number.toString()+"','"+Question.toString()+"','"+radio.toString()+"','"+cans.toString()+"','"+marks+"','"+session.getAttribute("username") +"','"+session.getAttribute("password") +"','"+etype.toString()+"')");         
              out.println(insert);
                 int qno=Integer.parseInt(session.getAttribute("qno").toString())+1;
                 session.setAttribute("qno", qno);
                resp.sendRedirect("Student_Question_Sheet.jsp");
          }
          catch(Exception ex)
          {
              out.println(ex.toString());
          }
      }
      
       if(event.equals("Previous"))
      {
      int qno=Integer.parseInt(session.getAttribute("qno").toString())-1;
       session.setAttribute("qno", qno);
      resp.sendRedirect("Student_Question_Sheet.jsp");
      }
       
       if(event.equals("Submit"))
       {
           resp.sendRedirect("Result.jsp");
       }
       }
       else
       {
        resp.setContentType("text/html;charset=UTF-8");
                         out.println("<script type=\"text/javascript\">");
                         out.println("alert('Please Select Option');");
                         out.println("location='Student_Question_Sheet.jsp';");
                         out.println("</script>");
       }
    }
}
