/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author admin
 */
public class r12th extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
        String mark=req.getParameter("marks");
        String event=req.getParameter("btn");
        HttpSession session=req.getSession();
        
        
        
        if(event.equals("Suggestion"))
        {
            session.setAttribute("marks", " ");
        resp.sendRedirect("Suggestion1.jsp");
        }
    }

    
}
