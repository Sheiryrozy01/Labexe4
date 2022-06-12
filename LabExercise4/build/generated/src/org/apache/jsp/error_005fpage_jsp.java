package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class error_005fpage_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css\"rel=\"stylesheet\" integrity=\"sha384- 1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3\" crossorigin=\"anonymous\">\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("        <style>\n");
      out.write("            .top_nav{\n");
      out.write("                width: 100%;\n");
      out.write("                background-color: rgba(0, 0, 0, 0.3); \n");
      out.write("            }\n");
      out.write("            .nav{\n");
      out.write("                float: left;\n");
      out.write("                overflow: hidden;\n");
      out.write("            }\n");
      out.write("            .nav a{\n");
      out.write("                float: left;\n");
      out.write("                color:white;\n");
      out.write("                text-align: center;\n");
      out.write("                padding: 10px 12px;\n");
      out.write("                text-decoration: none;\n");
      out.write("                font-size: 17px;\n");
      out.write("            }\n");
      out.write("            .nav a:hover{\n");
      out.write("                background-color: white;\n");
      out.write("                color: black;\n");
      out.write("            }\n");
      out.write("            .nav a:active{\n");
      out.write("                background-color: white;\n");
      out.write("                color: black;\n");
      out.write("            }\n");
      out.write("            .center2 {\n");
      out.write("                background-color: rgba(0, 0, 0, 0.3);\n");
      out.write("                width: 800px;\n");
      out.write("                margin-left: auto;\n");
      out.write("                margin-right: auto;\n");
      out.write("            }\n");
      out.write("            *{\n");
      out.write("                transition: all 0.6s;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            html {\n");
      out.write("                height: 100%;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            body{\n");
      out.write("                font-family: 'Lato', sans-serif;\n");
      out.write("                color: #888;\n");
      out.write("                margin: 0;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            #main{\n");
      out.write("                display: table;\n");
      out.write("                width: 100%;\n");
      out.write("                height: 100vh;\n");
      out.write("                text-align: center;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .fof{\n");
      out.write("                display: table-cell;\n");
      out.write("                vertical-align: middle;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .fof h1{\n");
      out.write("                font-size: 50px;\n");
      out.write("                display: inline-block;\n");
      out.write("                padding-right: 12px;\n");
      out.write("                animation: type .5s alternate infinite;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            @keyframes type{\n");
      out.write("                from{box-shadow: inset -3px 0px 0px #888;}\n");
      out.write("                to{box-shadow: inset -3px 0px 0px transparent;}\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body style=\"background-color: silver\">\n");
      out.write("        <div id=\"main\">\n");
      out.write("                <div class=\"fof\">\n");
      out.write("                    <h1>Error 404</h1>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        <table class=\"top_nav\">\n");
      out.write("            <tr>\n");
      out.write("                <td class=\"nav\">\n");
      out.write("                    <a href=\"adminindex.jsp\">Click to go Login Page</a>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            <br>\n");
      out.write("            \n");
      out.write("    </body>\n");
      out.write("            <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p\" crossorigin=\"anonymous\"></script> </body>\n");
      out.write("\n");
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
