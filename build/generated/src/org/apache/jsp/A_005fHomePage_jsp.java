package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class A_005fHomePage_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>A_HomePage</title>\n");
      out.write("        <style>\n");
      out.write("           \n");
      out.write("            body{\n");
      out.write("            \n");
      out.write("                margin:0;\n");
      out.write("                  margin:0;\n");
      out.write("                background:url(homepage.jpg);   \n");
      out.write("   background-repeat: no-repeat;\n");
      out.write("   background-size: cover;\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            h3{   \n");
      out.write("    font-family: Algerian;\n");
      out.write("    color:skyblue;\n");
      out.write("    margin:0%;\n");
      out.write("    padding:0%;\n");
      out.write("    font-size: 50px;\n");
      out.write("    margin-bottom: 50px;\n");
      out.write("    padding: 3px;\n");
      out.write("}\n");
      out.write("            h2{   \n");
      out.write("    font-family: Algerian;\n");
      out.write("    color:orange;\n");
      out.write("    margin:0%;\n");
      out.write("    padding:0%;\n");
      out.write("    font-size: 40px;\n");
      out.write("   \n");
      out.write("}\n");
      out.write(".home{\n");
      out.write("    position: static;\n");
      out.write("    top:50%;\n");
      out.write("    left:50%;\n");
      out.write("    color:black;\n");
      out.write("    \n");
      out.write("}\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            .navbar{\n");
      out.write("                top:20%;\n");
      out.write("                width:100%;\n");
      out.write("                background:#6699cc;\n");
      out.write("                box-shadow: 0 2px 5px 0 rgba(0,0,0,0.16), 0 2px 10px 0 rgba(0,0,0,0.12);\n");
      out.write("                \n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            ul{\n");
      out.write("                text-align: left;\n");
      out.write("                display: inline;\n");
      out.write("                margin: 0;\n");
      out.write("                padding: 0;\n");
      out.write("                list-style: none;\n");
      out.write("                }\n");
      out.write("                \n");
      out.write("                ul li{\n");
      out.write("                    font: bold 12px sans-serif;\n");
      out.write("                    display: inline-block;\n");
      out.write("                    position: relative;\n");
      out.write("                    padding: 15px 30px;\n");
      out.write("                    background: #6699cc;\n");
      out.write("                    \n");
      out.write("                }\n");
      out.write("                ul li a{\n");
      out.write("                    text-decoration: none;\n");
      out.write("                    padding: 25px 20px;\n");
      out.write("                    color: white;\n");
      out.write("                    font-size: 20px;\n");
      out.write("                }\n");
      out.write("                ul li:hover{\n");
      out.write("                    background: #4dd0e1;\n");
      out.write("                    color:white;\n");
      out.write("                }\n");
      out.write("                \n");
      out.write("        </style>\n");
      out.write("            \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       \n");
      out.write("          <br><br>\n");
      out.write("         <h3> <marquee>CAREER GUIDANCE TEST</marquee>   </h3> \n");
      out.write("        <div class=\"navbar\">\n");
      out.write("            <ul>\n");
      out.write("                <li><a href=\"Admin_pannel.jsp\">Admin Panel</a></li>         \n");
      out.write("                  <li><a href=\"Time_Master.jsp\">Add Exam</a></li>\n");
      out.write("                  <li><a href=\"Report.jsp\">Report</a></li>\n");
      out.write("                   <li><a href=\"About.jsp\">About Us</a></li>\n");
      out.write("               <li><a href=\"Contact Us.jsp\">Contact Us</a></li>\n");
      out.write("                  <li><a href=\"second.jsp\">LogOut</a></li> \n");
      out.write("                \n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("         <br>\n");
      out.write("         <h2>\n");
      out.write("             &nbsp; &nbsp;  Choose Your Perfect Career Way For Your Great Success....\n");
      out.write("         </h2>\n");
      out.write("   <img src=\"career-banner.jpg\" style=\"top:70%;left:10%;width:100%; height: 570px;\">\n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
