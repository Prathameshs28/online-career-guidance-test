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

/**
 *
 * @author admin
 */
@WebServlet(name = "Feed_back", urlPatterns = {"/Feed_back"})
public class Feed_back extends HttpServlet {

   protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        PrintWriter out=resp.getWriter();
        
        String Name= req.getParameter("Name");
        String Issue =req.getParameter("Issue");
        String event=req.getParameter("btn_Submit");
        
        out.println(Name);
        out.println(Issue);
        
        Database db=new Database();
       String result=db.Connectdb();
       out.println(result);
       
       if(event.equals("Send"))
       {
           try
           {
                String insert=db.Insert("insert into Feedback(Name,Issues)values('"+Name.toString()+"','"+Issue.toString()+"')");
                out.println(insert);
                resp.sendRedirect("Home_Page.jsp");
           }
          catch(Exception ex)
          {
              out.println(ex.toString());
          }
       }
       
   }
}
