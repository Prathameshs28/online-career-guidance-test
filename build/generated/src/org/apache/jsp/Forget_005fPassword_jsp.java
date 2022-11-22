package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Forget_005fPassword_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Forgot Password</title>\n");
      out.write("        <link rel=\"Stylesheet\" href=\"bootstrap.css\">\n");
      out.write("        <style>\n");
      out.write("        *{\n");
      out.write("                margin: 0;\n");
      out.write("                padding: 0;\n");
      out.write("            }\n");
      out.write("            body{\n");
      out.write("                background-image: url(\"Save.jpg\");\n");
      out.write("                background-size: cover;               \n");
      out.write("            }\n");
      out.write("            .jambotron{\n");
      out.write("                background-color: white; \n");
      out.write("                margin-left:420px;\n");
      out.write("                margin-right:420px;\n");
      out.write("                opacity: 0.9;\n");
      out.write("                border: 3px solid black;\n");
      out.write("                border-radius: 30px;\n");
      out.write("               \n");
      out.write("            }\n");
      out.write("             h2{\n");
      out.write("                text-shadow: 2px 2px 2px blue;\n");
      out.write("            }\n");
      out.write("            button{\n");
      out.write("                    height: 40px;\n");
      out.write("                    transition-property: height;\n");
      out.write("                    transition-duration: 0.3s;\n");
      out.write("                    transition-timing-function: linear;\n");
      out.write("            }\n");
      out.write("            button:hover{\n");
      out.write("                    text-align: center;\n");
      out.write("                    height:50px;\n");
      out.write("            }\n");
      out.write("         </style>       \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <form action=\"Forgot_Password\" name=\"Forgot_Password\" method=\"post\">\n");
      out.write("        <script src=\"validation.js\"></script>\n");
      out.write("        <br><br><br><br>\n");
      out.write("        <div class=\"jambotron\"><br><br>\n");
      out.write("            <h2><center>Forgot Password</center></h2><br><br>\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-sm-1\"></div>\n");
      out.write("                <div class=\"col-sm-4\">\n");
      out.write("                    <label>User Name-:</label>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-sm-5\">\n");
      out.write("                    <input type=\"text\" name=\"User_Name\" class=\"form-control\" onkeypress=\"javascript:return isString(event)\">\n");
      out.write("                </div>\n");
      out.write("            </div><br><br>\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-sm-1\"></div>\n");
      out.write("                <div class=\"col-sm-4\">\n");
      out.write("                    <label>Change Password-:</label>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-sm-5\">\n");
      out.write("                    <input type=\"password\" name=\"Password\"  class=\"form-control\" id=\"password\"  onkeyup='check();' maxlength=\"6\" >\n");
      out.write("                </div>\n");
      out.write("            </div><br><br>\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-sm-1\"></div>\n");
      out.write("                <div class=\"col-sm-4\">\n");
      out.write("                    <label>Confirm Password-:</label>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-sm-5\">\n");
      out.write("                    <input type=\"password\" name=\"C_Password\" maxlength=\"6\" class=\"form-control\" id=\"confirm_password\"  onkeyup='check();' >\n");
      out.write("                    <span id='message'></span>\n");
      out.write("                </div>\n");
      out.write("            </div><br><br>\n");
      out.write("             <div class=\"row\">\n");
      out.write("                <div class =\"col-sm-2\"></div>\n");
      out.write("                    <div class=\"col-sm-4\">\n");
      out.write("                      <button type=\"Reset\" name=\"btn_submit\"class=\"btn btn-danger\" value=\"Reset\" style=\"width:100px;\">Reset</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                        \n");
      out.write("                    </div>\n");
      out.write("                <div class=\"col-sm-4\">\n");
      out.write("                    <button type=\"submit\" name=\"btn_submit\" class=\"btn btn-success\" value=\"Save\" style=\"width:100px;\">Save</a></button>   \n");
      out.write("                </div>\n");
      out.write("                     <br>\n");
      out.write("                     <br>\n");
      out.write("                     <br>\n");
      out.write("            </div> \n");
      out.write("             <script type=\"text/javascript\">\n");
      out.write("\tvar check = function() {\n");
      out.write("  if (document.getElementById('password').value ==\n");
      out.write("    document.getElementById('confirm_password').value) {\n");
      out.write("    document.getElementById('message').style.color = 'green';\n");
      out.write("    document.getElementById('message').innerHTML = 'matching';\n");
      out.write("     } else {\n");
      out.write("    document.getElementById('message').style.color = 'red';\n");
      out.write("    document.getElementById('message').innerHTML = 'not matching';\n");
      out.write("   }\n");
      out.write("}\n");
      out.write("</script>\n");
      out.write("        </div> <br><br>  \n");
      out.write("        \n");
      out.write("\n");
      out.write("        </form>\n");
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
