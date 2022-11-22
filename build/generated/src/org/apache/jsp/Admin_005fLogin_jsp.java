package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Admin_005fLogin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html lang=\"en\" dir=\"ltr\">\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Admin Login</title>\n");
      out.write("        <link rel=\"Stylesheet\" href=\"bootstrap.css\">\n");
      out.write("         <style>\n");
      out.write("             *\n");
      out.write("             {\n");
      out.write("               margin:0;\n");
      out.write("\tpadding:0;  \n");
      out.write("             }\n");
      out.write("            body{\n");
      out.write("\t\n");
      out.write("\tfont-family: sans-serif;\n");
      out.write("\tbackground-image: url(\"Save.jpg\");\n");
      out.write("        background-size: cover;\n");
      out.write("        \n");
      out.write("}\n");
      out.write(".box{\n");
      out.write("\twidth: 400px;\n");
      out.write("        height: 330px;\n");
      out.write("\tpadding: 40px ;\n");
      out.write("\tposition: absolute;\n");
      out.write("\ttop:50%;\n");
      out.write("\tleft: 50%;\n");
      out.write("\ttransform: translate(-50%,-50%);\n");
      out.write("\tbackground:#191919;\n");
      out.write("\ttext-align: center;\n");
      out.write("        border-radius: 30px;\n");
      out.write("}\n");
      out.write(".box h1{\n");
      out.write("\tcolor: red;\n");
      out.write("\ttext-transform: uppercase;\n");
      out.write("\tfont-weight: 500;\n");
      out.write("}\n");
      out.write(".box input[type=\"text\"]{\n");
      out.write("\tborder: 0;\n");
      out.write("\tbackground:none;\n");
      out.write("\tdisplay:block;\n");
      out.write("\tmargin:20px auto;\n");
      out.write("\ttext-align:center;\n");
      out.write("\tborder:2px solid #3498bd;\n");
      out.write("\tpadding: 14px 10px;\n");
      out.write("\twidth:300px;\n");
      out.write("\toutline: none;\n");
      out.write("\tcolor:white;\n");
      out.write("\tborder-radius: 24px;\n");
      out.write("\ttransition: 0.25s;\n");
      out.write("}\n");
      out.write(".box input[type=\"password\"]{\n");
      out.write("        border: 0;\n");
      out.write("\tbackground:none;\n");
      out.write("\tdisplay:block;\n");
      out.write("\tmargin:20px auto;\n");
      out.write("\ttext-align:center;\n");
      out.write("\tborder:2px solid #3498bd;\n");
      out.write("\tpadding: 14px 10px;\n");
      out.write("\twidth:300px;\n");
      out.write("\toutline: none;\n");
      out.write("\tcolor:white;\n");
      out.write("\tborder-radius: 24px;\n");
      out.write("\ttransition: 0.25s;   \n");
      out.write("}\n");
      out.write(".box input[type=\"text\"]:focus{\n");
      out.write("\twidth:280px;\n");
      out.write("\tborder-color:#2ecc71;\n");
      out.write("}\n");
      out.write(".box input[type=\"password\"]:focus{\n");
      out.write("       width:280px;\n");
      out.write("       border-color:#2ecc71;\n");
      out.write("}\n");
      out.write(".box input[type=\"submit\"]{\n");
      out.write("\tborder: 0;\n");
      out.write("        width:200px;\n");
      out.write("\tbackground:none;\n");
      out.write("\tdisplay:block;\n");
      out.write("\tmargin:10px auto;\n");
      out.write("\ttext-align:center;\n");
      out.write("\tborder:2px solid #2ecc71;\n");
      out.write("\tpadding: 14px 40px;\n");
      out.write("\toutline: none;\n");
      out.write("\tcolor:white;\n");
      out.write("\tborder-radius:24px;\n");
      out.write("\ttransition: 0.25s;\n");
      out.write("\tcursor: pointer;\n");
      out.write("}\n");
      out.write(".box input[type=\"submit\"]:hover{\n");
      out.write("\tbackground:#2ecc71;\n");
      out.write("}\n");
      out.write("h1{\n");
      out.write("                text-shadow: 2px 3px 2px blue;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <script src=\"validation.js\"></script>        \n");
      out.write("        <form class=\"box\" action=\"Admin_Login\" name=\"Admin_Login\"method=\"post\">\n");
      out.write("\t<h1>Admin Login</h1>\n");
      out.write("        <input type=\"text\" name=\"text_name\"  placeholder=\"User Name\" onkeypress=\"javascript:return isString(event)\">\n");
      out.write("        <input type=\"password\" name=\"text_password\"  placeholder=\"password\">\n");
      out.write("\t<input type=\"submit\" name=\"rgister\" value=\"Login\">\n");
      out.write("     \n");
      out.write("        \n");
      out.write("        </form>       \n");
      out.write("    </body>\n");
      out.write("        \n");
      out.write("</html>");
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
