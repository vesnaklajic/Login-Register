package org.apache.jsp.WEB_002dINF;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class logIn_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("    <head>\n");
      out.write("        <title>logIn</title>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=\"UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"styleLoginIn.css\">      \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <form action=\"LoginSer\" method=\"POST\">\n");
      out.write("            <div id=\"allform\">\n");
      out.write("                <div id=\"leftform\">\n");
      out.write("                    <h1>Log in</h1> \n");
      out.write("\n");
      out.write("                    <input type=\"text\" placeholder=\"Username\" name=\"username\" id=\"user\" required/>\n");
      out.write("                    <input type=\"password\" placeholder=\"Password\" name=\"password\" id=\"pass\" required/>\n");
      out.write("                    <input type=\"submit\" value=\"Login\"/>\n");
      out.write("                    <span>Forgot <a href=\"#\"> Username / Password ?</a></span>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("                <div id=\"rightform\">\n");
      out.write("                    <h1>Enregistrer</h1>\n");
      out.write("                    <input type=\"text\" placeholder=\"Nom\" name=\"Nom\" id=\"nom\"required/>\n");
      out.write("                    <input type=\"text\" placeholder=\"Prenom\" name=\"Prenom\" id=\"prenom\"/>\n");
      out.write("                    <input type=\"email\" placeholder=\"Email\" name=\"Email\" id=\"email\"/>\n");
      out.write("                    <input type=\"text\" placeholder=\"Username\" name=\"username2\" id=\"user2\"required/>\n");
      out.write("                    <input type=\"password\" placeholder=\"Password\" name=\"password2\" id=\"pass2\"required/>\n");
      out.write("                    <input type=\"submit\" value=\"Registrer\">\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </form>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
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
