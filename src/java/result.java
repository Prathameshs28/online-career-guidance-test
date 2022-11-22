/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import com.sun.xml.internal.ws.api.ha.StickyFeature;
import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(name = "result", urlPatterns = {"/result"})
public class result extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       PrintWriter out=resp.getWriter();
        String event=req.getParameter("btn");
        String marks=req.getParameter("marks");
        HttpSession session=req.getSession();
        
        if(session.getAttribute("etype").equals("After 12th"))
        {
           // HttpSession session=req.getSession();
            session.setAttribute("marks", marks);
            resp.sendRedirect("Suggestion2.jsp");
            
            
        }
        if(session.getAttribute("etype").equals("After 10th"))
        {
           session.setAttribute("marks", marks);
            resp.sendRedirect("Suggestion1.jsp");
        }
    }

    
}
