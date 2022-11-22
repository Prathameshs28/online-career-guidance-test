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
@WebServlet(name = "Payment", urlPatterns = {"/Payment"})
public class Payment extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
       String UserName=req.getParameter("User_Name");
       String tpayment=req.getParameter("Ctype");
        String card=req.getParameter("Btype");
         String bank=req.getParameter("Btype");
         String Sixteen_Dno=req.getParameter("Sixteen_Dno");
         String Three_Dno=req.getParameter("Three_Dno");
         
         
                 
      
       
         
         String event=req.getParameter("btn");
       out.println(UserName);
       out.println(tpayment);
       out.println(bank);
        out.println(Sixteen_Dno);
       out.println(Three_Dno);
       
        
       Database db=new  Database();
         String result=db.Connectdb();
         out.println(result);  
         
         
         if(event.equals("paynow"))
         {
             try
             {
                 if(tpayment.equals("")||card.equals("")||bank.equals(""))
                 {
                  resp.setContentType("text/html");
                  out.println("<script type=\"text/javascript\">");
                  out.println("alert('Some fields are Empty !');");
                  out.println("location='Payment.jsp';");
                  out.println("</script>");
                 }
                 
                 else
                  {
               Date d=new Date();
               SimpleDateFormat dates=new SimpleDateFormat("yyyy-MM-dd");
               String date1=dates.format(d);
                      
                    String insert = db.Insert("insert into Pay_ment(P_Type,Bank_Name,SixteenDNumber,ThreeDNumber,User_Name,date)values('"+tpayment.toString()+"','"+bank.toString()+"','"+Sixteen_Dno.toString()+"','"+Three_Dno.toString()+"','"+UserName.toString()+"','"+date1.toString()+"')");
             out.println(insert);
                  resp.setContentType("text/html");
                  out.println("<script type=\"text/javascript\">");
                  out.println("alert('Payment Successfully');");
                  out.println("location='Login.jsp';");
                  out.println("</script>");
                  
             }
                 
             }catch(Exception ex)
             {
                 out.println(ex.toString());
             }
         }
         if(event.equals("cancel"))
         {
             resp.sendRedirect("Login.jsp");
         }
       
    }
    
}
