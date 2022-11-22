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
@WebServlet(name = "Admin_Pannel", urlPatterns = {"/Admin_Pannel"})
public class Admin_Pannel extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        String event=req.getParameter("text_name");
        
        if(event.equals("View_User_Details"))
        {
            resp.sendRedirect("view_customer_details.jsp");
        }
        if(event.equals("View_Payment_Details"))
        {
            resp.sendRedirect("view_payment_details.jsp");
        }
        if(event.equals("View_Feedback"))
        {
              resp.sendRedirect("view_feedback.jsp");
        }
        if(event.equals("View_Student_Result"))
        {
            resp.sendRedirect("student_result.jsp");
        }
    }

    
}
