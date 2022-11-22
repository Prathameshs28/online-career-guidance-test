package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Suggestion1_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Suggestion Page</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"bootstrap.css\" type=\"text/css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\" https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("        \n");
      out.write("        <script src=\"validation.js\"></script>\n");
      out.write("  <style>\n");
      out.write("           body{\n");
      out.write("                background-image: url(\"Save.jpg\");\n");
      out.write("            }\n");
      out.write("            label\n");
      out.write("            {\n");
      out.write("                \n");
      out.write("                font-size: 15px;\n");
      out.write("                font-family: arial black;\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            input[type=text]:hover\n");
      out.write("                    {\n");
      out.write("                    border: 2px solid darkgrey;\n");
      out.write("                    \n");
      out.write("                   }\n");
      out.write("          \n");
      out.write("                   input[type=submit]:hover\n");
      out.write("                    {\n");
      out.write("                    border: 2px solid darkgreen;\n");
      out.write("                    \n");
      out.write("                   }\n");
      out.write("                   \n");
      out.write("                   ul {\n");
      out.write("  list-style-type: none;\n");
      out.write("  margin:0;\n");
      out.write("  padding: 0;\n");
      out.write("  overflow: hidden;\n");
      out.write("  background-color: #333;\n");
      out.write("}\n");
      out.write("\n");
      out.write("li a:hover\n");
      out.write(" {\n");
      out.write("     color: white;\n");
      out.write("     \n");
      out.write(" }\n");
      out.write(" \n");
      out.write("li {\n");
      out.write("  float: left;\n");
      out.write("   }\n");
      out.write("\n");
      out.write("li a {\n");
      out.write("  display: block;\n");
      out.write("  color: white;\n");
      out.write("  text-align: center;\n");
      out.write("  padding: 14px 35px;\n");
      out.write("  text-decoration: none;\n");
      out.write("}\n");
      out.write("\n");
      out.write("li a:hover:not(.active) {\n");
      out.write("  background-color: #111;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".active {\n");
      out.write("  background-color: #4CAF50;\n");
      out.write("}\n");
      out.write("\n");
      out.write("      table, td, th {  \n");
      out.write("  border: 2px solid black;\n");
      out.write("  text-align: left;\n");
      out.write("}\n");
      out.write("\n");
      out.write("table {\n");
      out.write("  border-collapse: collapse;\n");
      out.write("  width: 100%;\n");
      out.write("}\n");
      out.write("\n");
      out.write("th, td {\n");
      out.write("  padding:9px;\n");
      out.write("}\n");
      out.write(".jumbotron{\n");
      out.write("    border-radius: 40px;\n");
      out.write("}\n");
      out.write("button{\n");
      out.write("           height: 48px;\n");
      out.write("           margin-left: 1172px;\n");
      out.write("           transition-property: height;\n");
      out.write("           transition-duration: 0.3s;\n");
      out.write("           transition-timing-function: linear;\n");
      out.write("      }\n");
      out.write("      button:hover{\n");
      out.write("          text-align: center;\n");
      out.write("          height:48px;\n");
      out.write("      }             \n");
      out.write("        </style>\n");
      out.write("        <ul>\n");
      out.write("  <li><a class=\"active\" href=\"Home_Page.jsp\">Home</a></li>\n");
      out.write("   <li><a href=\"Login.jsp\">Logout</a></li>\n");
      out.write("  </ul>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <body style=\"background-image: url(Save.jpg);background-size:cover;background-repeat: no-repeat\">\n");
      out.write("        \n");
      out.write("            \n");
      out.write("        <div class=\"jumbotron\" style=\"margin-left:220px;margin-top:40px;width:70%;opacity:0.8;box-shadow:0px 0px 8px 8px black;height:650px \">\n");
      out.write("            \n");
      out.write("            <div class=\"row\">\n");
      out.write("                   <div class=\"col-sm-4\"></div>\n");
      out.write("                   <div class=\"col-sm-5\">\n");
      out.write("                       <center> <label><h2 style=\"color: black;text-shadow: 3px 3px 6px silver;padding-bottom:0px\"> Suggestion </h2></label></center>\n");
      out.write("                    </div>\n");
      out.write("                   <div class=\"col-sm-3\"></div>\n");
      out.write("                 </div>\n");
      out.write("            <br> \n");
      out.write("                 <div class=\"row\">\n");
      out.write("                   <div class=\"col-sm-2\"></div>\n");
      out.write("                   <div class=\"col-sm-2\">\n");
      out.write("                       <label> Full Name:</label></div>\n");
      out.write("                   <div class=\"col-sm-2\">\n");
      out.write("               <b>      <input type=\"text\" style=\"width:250px;\" value=\"");
      out.print(session.getAttribute("fname"));
      out.write(' ');
      out.print(session.getAttribute("mname"));
      out.write(' ');
      out.print(session.getAttribute("lname"));
      out.write("\" class=\"form-control\" readonly=\"\"> </label>\n");
      out.write("                  </div>\n");
      out.write("                   <div class=\"col-sm-6\">\n");
      out.write("                       <label></label>\n");
      out.write("                   </div>\n");
      out.write("                   <div class=\"col-sm-2\"></div>\n");
      out.write("                 </div> \n");
      out.write("                 <br>\n");
      out.write("                 <div class=\"row\">\n");
      out.write("                   <div class=\"col-sm-2\"></div>\n");
      out.write("                   <div class=\"col-sm-2\">\n");
      out.write("                       \n");
      out.write("                        <b> <label> Exam Type: </label>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-sm-2\">\n");
      out.write("                       <label>");
      out.print(session.getAttribute("etype"));
      out.write("</label>\n");
      out.write("                   </div>\n");
      out.write("                   <div class=\"col-sm-2\"></div>\n");
      out.write("                   \n");
      out.write("                 </div>\n");
      out.write("                 <br>\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                   <div class=\"col-sm-2\"></div>\n");
      out.write("                   <div class=\"col-sm-2\">\n");
      out.write("                       <label> Your Marks: </label>\n");
      out.write("                    </div>\n");
      out.write("                   <div class=\"col-sm-6\">\n");
      out.write("                      <label>");
      out.print(session.getAttribute("marks"));
      out.write("</label>\n");
      out.write("                       \n");
      out.write("                   </div>\n");
      out.write("                   <div class=\"col-sm-2\"></div>\n");
      out.write("                 </div><br>\n");
      out.write("                 <div class=\"row\">\n");
      out.write("                     <div class=\"col-sm-2\"></div>\n");
      out.write("                     <div class=\"col-sm-8\">\n");
      out.write("                          <table>\n");
      out.write("  <tr>\n");
      out.write("    <th style=\"color: black;text-shadow: 3px 3px 6px silver;padding-bottom:0px\">Your Marks</th>\n");
      out.write("    <th style=\"color: black;text-shadow: 3px 3px 6px silver;padding-bottom:0px\">Our Suggestion</th>\n");
      out.write("  </tr>\n");
      out.write("   <tr>\n");
      out.write("    <th>Marks In Between 41-50</th>\n");
      out.write("    <th>You can go Diploma,Science,Commerce,Arts,ITI</th>\n");
      out.write("  </tr>\n");
      out.write("  <tr>\n");
      out.write("    <th>Marks In Between 31-40</th>\n");
      out.write("    <th>You can go Science,Commerce,Arts,ITI</th>\n");
      out.write("  </tr>\n");
      out.write("  <tr>\n");
      out.write("    <th>Marks In Between 21-30</th>\n");
      out.write("    <th>You can go Commerce,Arts,ITI</th>\n");
      out.write("  </tr>\n");
      out.write("  <tr>\n");
      out.write("    <th>Marks In Between 11-20</th>\n");
      out.write("    <th>You can go Arts,ITI </th>\n");
      out.write("  </tr>\n");
      out.write("  </table> <br>\n");
      out.write("           <br> <br>\n");
      out.write("          <form action=\"Finish\" method=\"post\">\n");
      out.write("           <div class=\"row\">\n");
      out.write("                   <div class=\"col-sm-3\"></div>\n");
      out.write("                   <div class=\"col-sm-3\">\n");
      out.write("                       <button type=\"submit\" name=\"btn_submit\" class=\"btn btn-success\" value=\"Continue\" style=\"width:100px; margin-left: 70px;\">Finish</button>                     \n");
      out.write("                 </div>          \n");
      out.write("                   <div class=\"col-sm-3\">\n");
      out.write("                                 <button onclick=\"window.print();\" class=\"btn btn-primary\" style=\"width: 100px; height:40px;\">Print</button>\n");
      out.write("                   </div>\n");
      out.write("       </div>  </form>\n");
      out.write("           \n");
      out.write("                     </div>\n");
      out.write("                       \n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
