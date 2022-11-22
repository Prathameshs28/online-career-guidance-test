/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.mail.Address;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author admin
 */
public class Time_Master extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
        
        String Time=req.getParameter("Time");
        String event=req.getParameter("btn_submit");
        
        
         out.println(Time);
        
        
        Database db=new Database();
       String result=db.Connectdb();
       out.println(result);
       
       
       if(event.equals("next"))
       {
           try
           {    
               String insert=db.Insert("insert into Time_Master(Time)values('"+Time.toString()+"')");
               out.println(insert);
               resp.sendRedirect("Examination.jsp");
               
           }
           catch(Exception ex)
           {
               out.println(ex.toString());
           }
       }
    }

}

