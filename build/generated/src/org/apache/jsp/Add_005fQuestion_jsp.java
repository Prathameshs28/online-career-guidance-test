package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Add_005fQuestion_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Add Question</title>\n");
      out.write("        <link rel=\"Stylesheet\" href=\"bootstrap.css\">\n");
      out.write("        <script>\n");
      out.write("           function clear()\n");
      out.write("            {\n");
      out.write("                document.getElementById(\"ei\").value=\"1\";\n");
      out.write("                document.getElementById(\"qn\").value=\"\";\n");
      out.write("                document.getElementById(\"q\").value=\"\";\n");
      out.write("                document.getElementById(\"op1\").value=\"\";    \n");
      out.write("                document.getElementById(\"op2\").value=\"\";\n");
      out.write("                document.getElementById(\"op3\").value=\"\";\n");
      out.write("                document.getElementById(\"op4\").value=\"\";\n");
      out.write("                document.getElementById(\"co\").value=\"\";\n");
      out.write("        }\n");
      out.write("            \n");
      out.write("        </script>\n");
      out.write("        <style>\n");
      out.write("            *{\n");
      out.write("                margin: 0;\n");
      out.write("                padding: 0;\n");
      out.write("            }\n");
      out.write("            body{\n");
      out.write("                background-image: url(\"Save.jpg\");\n");
      out.write("        background-size: cover;\n");
      out.write("        \n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            .jambotron{\n");
      out.write("                background-color: white; \n");
      out.write("                margin-left:300px;\n");
      out.write("                margin-right:300px;\n");
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
      out.write("         </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <form action=\"Add_Question\" name=\"Add_Question\" method=\"post\">\n");
      out.write("        <script src=\"validation.js\"></script>\n");
      out.write("        <br><br><br>\n");
      out.write("        <div class=\"jambotron\">\n");
      out.write("        <h2><center>Add Question</center></h2><br><br>\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-sm-2\"></div>\n");
      out.write("            <div class=\"col-sm-4\">\n");
      out.write("              \n");
      out.write("                <label>Exam Id-:</label>\n");
      out.write("            </div>\n");
      out.write("                <div class=\"col-sm-4\">\n");
      out.write("                    <input type=\"text\" id=\"ei\" name=\"Exam_Id\" value=\"");
      out.print(request.getAttribute("E_type"));
      out.write("\" class=\"form-control\">\n");
      out.write("                </div>\n");
      out.write("            </div><br><br>\n");
      out.write("            <div class=\"row\">\n");
      out.write("            <div class=\"col-sm-2\"></div>\n");
      out.write("            <div class=\"col-sm-4\">\n");
      out.write("                <label>Question Number-:</label>\n");
      out.write("            </div>\n");
      out.write("                <div class=\"col-sm-4\">\n");
      out.write("                    <input type=\"text\" class=\"form-control\" id=\"qn\" value=\"");
      out.print(request.getAttribute("Q_no"));
      out.write("\" name=\"Q_Number\" onkeypress=\"javascript:return isNumber(event)\">\n");
      out.write("                </div>\n");
      out.write("            </div><br><br>\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-sm-2\"></div>\n");
      out.write("                <div class=\"col-sm-4\">\n");
      out.write("                     <label>Question -:</label>\n");
      out.write("                </div>\n");
      out.write("            </div><br>\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-sm-1\"></div>\n");
      out.write("                <div class=\"col-sm-10\">\n");
      out.write("                    <textarea row=\"3\" col=\"10\" id=\"q\" name=\"Question\"   class=\"form-control\">");
      out.print(request.getAttribute("Ques"));
      out.write("</textarea>\n");
      out.write("                </div>\n");
      out.write("            </div><br><br>\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-sm-3\"></div>\n");
      out.write("                <div class=\"col-sm-1\"><label>A)</label></div>\n");
      out.write("                <div class=\"col-sm-4\"><input type=\"text\" id=\"op1\" value=\"");
      out.print(request.getAttribute("oa"));
      out.write("\" name=\"Option_A\"class=\"form-control\"></div>                \n");
      out.write("                </div><br><br>\n");
      out.write("                <div class=\"row\">\n");
      out.write("                <div class=\"col-sm-3\"></div>\n");
      out.write("                <div class=\"col-sm-1\"><label>B)</label></div>\n");
      out.write("                <div class=\"col-sm-4\"><input type=\"text\" id=\"op2\" value=\"");
      out.print(request.getAttribute("ob"));
      out.write("\"  name=\"Option_B\" class=\"form-control\"></div>                \n");
      out.write("                </div><br><br>\n");
      out.write("                <div class=\"row\">\n");
      out.write("                <div class=\"col-sm-3\"></div>\n");
      out.write("                <div class=\"col-sm-1\"><label>C)</label></div>\n");
      out.write("                <div class=\"col-sm-4\"><input type=\"text\" id=\"op3\" value=\"");
      out.print(request.getAttribute("oc"));
      out.write("\" name=\"Option_C\" class=\"form-control\"></div>                \n");
      out.write("                </div><br><br>\n");
      out.write("                <div class=\"row\">\n");
      out.write("                <div class=\"col-sm-3\"></div>\n");
      out.write("                <div class=\"col-sm-1\"><label>D)</label></div>\n");
      out.write("                <div class=\"col-sm-4\"><input type=\"text\" id=\"op4\" value=\"");
      out.print(request.getAttribute("od"));
      out.write("\" name=\"Option_D\" class=\"form-control\"></div>                \n");
      out.write("                </div><br><br>\n");
      out.write("                <div class=\"row\">\n");
      out.write("                <div class=\"col-sm-2\"></div>\n");
      out.write("                <div class=\"col-sm-2\"><label>Correct</label></div>\n");
      out.write("                <div class=\"col-sm-4\"><input type=\"text\" id=\"co\" value=\"");
      out.print(request.getAttribute("co"));
      out.write("\" name=\"Option_Corect\" class=\"form-control\"></div>                \n");
      out.write("                </div><br><br>\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-sm-1\"></div>\n");
      out.write("                    <div class=\"col-sm-2\">\n");
      out.write("                        <button input=\"submit\" name=\"btn_submit\" value=\"Save\" class=\"btn btn-success\" style=\"width:80px;\">Save</button>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-sm-2\">\n");
      out.write("                        <button input=\"submit\"  name=\"btn_submit\" value=\"Update\" class=\"btn btn-primary\" style=\"width:80px;\">Update</button>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-sm-2\">\n");
      out.write("                        <button input=\"submit\"  name=\"btn_submit\" value=\"Delete\" class=\"btn btn-danger\" style=\"width:80px;\">Delete</button>\n");
      out.write("                    </div>\n");
      out.write("                   <div class=\"col-sm-2\">\n");
      out.write("                       <button input=\"submit\"  name=\"btn_submit\" value=\"Search\" class=\"btn btn-primary\" style=\"width:80px;\">Search</button>\n");
      out.write("                    </div>\n");
      out.write("                     <div class=\"col-sm-2\">\n");
      out.write("                         <button input=\"submit\" name=\"btn_submit\" value=\"Exit\" class=\"btn btn-danger\" style=\"width:80px;\">Exit</button>\n");
      out.write("                    </div><br><br><br>                   \n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("                ");

                if(request.getAttribute("Option_Corect")==null)
                                       {
                    
      out.write("\n");
      out.write("                    <script>\n");
      out.write("                        clear();\n");
      out.write("                    </script>\n");
      out.write("                    ");

                                       }
                
      out.write("\n");
      out.write("        </form>\n");
      out.write("      </body>\n");
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
