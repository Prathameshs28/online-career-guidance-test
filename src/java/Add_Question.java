/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.net.ConnectException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;
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
@WebServlet(name = "Add_Question", urlPatterns = {"/Add_Question"})
public class Add_Question extends HttpServlet {

    Connection cn = null;
    Statement st = null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        PrintWriter out = resp.getWriter();

        String ExamId = req.getParameter("Exam_Id");
        String Qusetion_Number = req.getParameter("Q_Number");
        String Question = req.getParameter("Question");
        String Option_A = req.getParameter("Option_A");
        String Option_B = req.getParameter("Option_B");
        String Option_C = req.getParameter("Option_C");
        String Option_D = req.getParameter("Option_D");
        String Option_Correct = req.getParameter("Option_Corect");
        String event = req.getParameter("btn_submit");


        out.println(ExamId);
        out.println(Qusetion_Number);
        out.println(Question);
        out.println(Option_A);
        out.println(Option_B);
        out.println(Option_C);
        out.println(Option_D);
        out.println(Option_Correct);


        Database db = new Database();
        String result = db.Connectdb();
        out.println(result);
        
         HttpSession session=req.getSession();
         
         if(event.equals("Exit"))
         {
          resp.sendRedirect("A_HomePage.jsp");   
         }


        if (event.equals("Save")) 
        {
           
                 Date date=new Date();
               SimpleDateFormat dates=new SimpleDateFormat("yyyy-MM-dd");
               String date1=dates.format(date);
               String insert = db.Insert("insert into Add_Question(Exam_Id,Q_Number,Question,O_A,O_B,O_C,O_D,C_O,E_type,date)values('"+ExamId.toString()+"','"+Qusetion_Number.toString()+"','"+Question.toString()+"','"+Option_A.toString()+"','"+Option_B.toString()+"','"+Option_C.toString()+"','"+Option_D.toString()+"','"+Option_Correct.toString()+"','"+session.getAttribute("etype")+"','"+date.toString()+"')");
                out.println(insert);
                 resp.setContentType("text/html;charset=UTF-8");
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Question Add Successfully');");
                out.println("location='Add_Question.jsp';");
                out.println("</script>");
               
            
        }

        if (event.equals("Update")) {
            try {


                String update = db.Update("update Add_Question set Exam_Id='" + ExamId.toString() + "',Question='" + Question.toString() + "',O_A='" + Option_A.toString() + "',O_B='" + Option_B.toString() + "',O_C='" + Option_C.toString() + "',O_D='" + Option_D.toString() + "',C_O='" + Option_Correct.toString() + "' where Q_Number='" + Qusetion_Number.toString() + "'");
                out.println(update);
                resp.setContentType("text/html;charset=UTF-8");
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Record Updated');");
                out.println("location='Add_Question.jsp';");
                out.println("</script>");

            } catch (Exception ex) {
                out.println(ex.toString());
            }
        }

        if (event.equals("Delete")) {
            try {

                String delete = db.Delete("delete from Add_Question where Q_Number='" + Qusetion_Number.toString() + "' ");

                out.println(delete);

                resp.setContentType("text/html;charset=UTF-8");
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Record Deleted');");
                out.println("location='Add_Question.jsp';");
                out.println("</script>");
            } catch (Exception ex) {
                out.println(ex.toString());
            }
        }




        if (event.equals("Search")) {

            Connection cn = null;
            Statement st = null;




            try {
                Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                cn = DriverManager.getConnection("jdbc:odbc:IQ_TEST");
                st = cn.createStatement();
                String sql = "select * from Add_Question where Q_Number='" + Qusetion_Number.toString() + "'";
                ResultSet rs = st.executeQuery(sql);
                while (rs.next()) {
                    req.setAttribute("E_type", rs.getString("Exam_Id"));
                    req.setAttribute("Q_no", rs.getString("Q_Number"));
                    req.setAttribute("Ques", rs.getString("Question"));
                    req.setAttribute("oa", rs.getString("O_A"));
                    req.setAttribute("ob", rs.getString("O_B"));
                    req.setAttribute("oc", rs.getString("O_C"));
                    req.setAttribute("od", rs.getString("O_D"));
                    req.setAttribute("co", rs.getString("C_O"));

                   req.getRequestDispatcher("Add_Question.jsp").forward(req, resp);

                }
              /* resp.setContentType("text/html;charset=UTF-8");
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Record Selected');");
                out.println("location='Add_Question.jsp';");
                out.println("</script>");*/


            } catch (Exception ex) {
                out.println(ex.toString());
            }
        }


    }
}
