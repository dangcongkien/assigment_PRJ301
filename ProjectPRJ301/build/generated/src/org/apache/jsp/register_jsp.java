package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class register_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Register</title>\n");
      out.write("        <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3\" \n");
      out.write("              crossorigin=\"anonymous\">\n");
      out.write("        <link href=\"../style.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("    <body>\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"container-form\">\n");
      out.write("                <h4 class=\"error\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${error}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</h4>\n");
      out.write("                <h1>Register Form</h1>\n");
      out.write("                <hr/>\n");
      out.write("                <form action=\"register\" method=\"POST\">\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label>First name</label>\n");
      out.write("                        <input type=\"text\" class=\"form-control\" placeholder=\"Enter first name\" name=\"firstName\"/>\n");
      out.write("                    </div>\n");
      out.write("                    <div>\n");
      out.write("                        <label>Last name</label>\n");
      out.write("                        <input type=\"text\" class=\"form-control\" placeholder=\"Enter last name\" name=\"lastName\"/>\n");
      out.write("                    </div>\n");
      out.write("                    <div>\n");
      out.write("                        <label>Date of birth</label>\n");
      out.write("                        <input type=\"date\" class=\"form-control\" name=\"dob\"/>\n");
      out.write("                    </div>\n");
      out.write("                    <div>\n");
      out.write("                        <label>Gender</label>\n");
      out.write("                        <div>\n");
      out.write("                            <input type=\"radio\" name=\"gender\" value=\"1\" class=\"gender\"/> Male\n");
      out.write("                            <input type=\"radio\" name=\"gender\" value=\"0\" class=\"gender\"/> Female\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group\" >\n");
      out.write("                        <label>Address</label>\n");
      out.write("                        <input type=\"text\" class=\"form-control\" placeholder=\"Enter address\" name=\"address\"/>\n");
      out.write("                    </div>\n");
      out.write("                    <div>\n");
      out.write("                        <label>Telephone number</label>\n");
      out.write("                        <input type=\"text\" class=\"form-control\" placeholder=\"Enter telephone number\" name=\"phoneNumber\"/>\n");
      out.write("                    </div>\n");
      out.write("                    <div>\n");
      out.write("                        <label>Email</label>\n");
      out.write("                        <input type=\"email\" class=\"form-control\" placeholder=\"Enter email\" name=\"email\"/>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label>Specialized</label>\n");
      out.write("                        <select class=\"form-control\" name=\"specialized\">\n");
      out.write("                            <option value=\"4\">Software engineering</option>\n");
      out.write("                            <option value=\"5\">Business administration</option>\n");
      out.write("                            <option value=\"6\">Artificial intelligence</option>\n");
      out.write("                        </select>\n");
      out.write("                    </div>\n");
      out.write("                    <button type=\"submit\" class=\"btn btn-primary\">register</button>\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
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
