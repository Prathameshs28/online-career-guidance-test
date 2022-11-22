/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author admin
 */
@WebServlet(name = "Feed_Back1", urlPatterns = {"/Feed_Back1"})
public class Feed_Back1 extends HttpServlet {

    @Override
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
       
       if(event.equals("Back"))
       {
           resp.sendRedirect("Home_Page.jsp");
       }      
       
       if(event.equals("Send"))
       {
           try
           {
              
               Date d=new Date();
               SimpleDateFormat dates=new SimpleDateFormat("yyyy-MM-dd");
               String date1=dates.format(d);               
                String insert=db.Insert("insert into Feedback(Name,Issues,date)values('"+Name.toString()+"','"+Issue.toString()+"','"+date1+"')");
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

