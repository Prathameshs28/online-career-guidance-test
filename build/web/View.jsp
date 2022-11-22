<%-- 
    Document   : View
    Created on : Mar 9, 2020, 11:19:52 AM
    Author     : admin
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="net.sf.jasperreports.engine.JasperRunManager"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        
        
        
        String event=request.getParameter("btn_cancel");
           String date1=request.getParameter("txt_Date1");
            String date2=request.getParameter("txt_Date2");
         
        
            Connection cn = null;
            try {
                 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            cn=DriverManager.getConnection("jdbc:odbc:IQ_TEST");
          
            } catch (Exception ex) {
                ex.printStackTrace();
            }
            if(event.equals("Student info"))
                               {
            File reportFile = new File(application.getRealPath("Report\\Student_Info..jasper"));//your report_name.jasper file
            Map parameters = new HashMap();
            byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, cn);

            response.setContentType("application/pdf"); 
            response.setContentLength(bytes.length);
            ServletOutputStream outStream = response.getOutputStream();
            outStream.write(bytes, 0, bytes.length);
            outStream.flush();
            outStream.close();
                                  }
             if(event.equals("Payment info"))
                               {
            File reportFile = new File(application.getRealPath("Report\\Payment.jasper"));//your report_name.jasper file
            Map parameters = new HashMap();
            byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, cn);

            response.setContentType("application/pdf"); 
            response.setContentLength(bytes.length);
            ServletOutputStream outStream = response.getOutputStream();
            outStream.write(bytes, 0, bytes.length);
            outStream.flush();
            outStream.close();
                                  }
             if(event.equals("Question info"))
                               {
            File reportFile = new File(application.getRealPath("Report\\Question_Report.jasper"));//your report_name.jasper file
            Map parameters = new HashMap();
            byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, cn);

            response.setContentType("application/pdf"); 
            response.setContentLength(bytes.length);
            ServletOutputStream outStream = response.getOutputStream();
            outStream.write(bytes, 0, bytes.length);
            outStream.flush();
            outStream.close();
                                  }
             if(event.equals("Feedback info"))
                               {
            File reportFile = new File(application.getRealPath("Report\\Feedback.jasper"));//your report_name.jasper file
            Map parameters = new HashMap();
            byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, cn);

            response.setContentType("application/pdf"); 
            response.setContentLength(bytes.length);
            ServletOutputStream outStream = response.getOutputStream();
            outStream.write(bytes, 0, bytes.length);
            outStream.flush();
            outStream.close();
                                  }
            
           
            
            
           /* SimpleDateFormat dates=new SimpleDateFormat("yyyy/MM/dd");
            String dates1=dates.format(date1);
            String dates2=dates.format(date2);*/
              if(event.equals("date_Payment info"))
                               {
             out.println(date1);
             out.println(date2);                
            File reportFile = new File(application.getRealPath("Report\\date_Payment.jasper"));//your report_name.jasper file
            Map parameters = new HashMap();
            parameters.put("date1", date1.toString());
            parameters.put("date2", date2.toString());
            byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, cn);

            response.setContentType("application/pdf"); 
            response.setContentLength(bytes.length);
            ServletOutputStream outStream = response.getOutputStream();
            outStream.write(bytes, 0, bytes.length);
            outStream.flush();  
            outStream.close();
                                 }
             
             
             /* */
           
            
            
             if(event.equals("date_Student info"))
                               {
            // out.println(date1);
            // out.println(date2);                
            File reportFile = new File(application.getRealPath("Report\\date_student_info.jasper"));//your report_name.jasper file
            Map parameters = new HashMap();
            parameters.put("date1", date1.toString());
            parameters.put("date2", date2.toString());
            byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, cn);

            response.setContentType("application/pdf"); 
            response.setContentLength(bytes.length);
            ServletOutputStream outStream = response.getOutputStream();
            outStream.write(bytes, 0, bytes.length);
            outStream.flush();  
            outStream.close();
                                 }
            
             if(event.equals("date_Question info"))
                               {
             //out.println(date1);
             //out.println(date2);                
            File reportFile = new File(application.getRealPath("Report\\Question_Details_date.jasper"));//your report_name.jasper file
            Map parameters = new HashMap();
            parameters.put("date1", date1.toString());
            parameters.put("date2", date2.toString());
            byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, cn);

            response.setContentType("application/pdf"); 
            response.setContentLength(bytes.length);
            ServletOutputStream outStream = response.getOutputStream();
            outStream.write(bytes, 0, bytes.length);
            outStream.flush();  
            outStream.close();
                                 }
            
             if(event.equals("date_Feedback info"))
                               {
             //out.println(date1);
             //out.println(date2);                
            File reportFile = new File(application.getRealPath("Report\\Date_Feedback.jasper"));//your report_name.jasper file
            Map parameters = new HashMap();
            parameters.put("date1", date1.toString());
            parameters.put("date2", date2.toString());
            byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, cn);

            response.setContentType("application/pdf"); 
            response.setContentLength(bytes.length);
            ServletOutputStream outStream = response.getOutputStream();
            outStream.write(bytes, 0, bytes.length);
            outStream.flush();  
            outStream.close();
                                 }
             
        %>
    </body>
</html>
