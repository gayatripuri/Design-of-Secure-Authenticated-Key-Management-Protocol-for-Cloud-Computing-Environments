package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class uploadFiles_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("        <meta name=\"description\" content=\"\">\n");
      out.write("        <meta name=\"author\" content=\"\">\n");
      out.write("        <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\">\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css2?family=Montserrat:wght@100;200;300;400;500;600;700;800;900&display=swap\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <title>Design of Secure Authenticated Key Management Protocol</title>\n");
      out.write("\n");
      out.write("        <!-- Bootstrap core CSS -->\n");
      out.write("        <link href=\"vendor/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!-- Additional CSS Files -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/fontawesome.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/templatemo-plot-listing.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/animated.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/owl.css\">\n");
      out.write("\n");
      out.write("    </head>");

        if (request.getParameter("File_uploaded") != null) {
    
      out.write("\n");
      out.write("    <script>alert('File uploaded Successfully');</script>\n");
      out.write("    ");
            }
    
      out.write("\n");
      out.write("    <script type=\"text/javascript\">\n");
      out.write("        function loadFile(o)\n");
      out.write("        {\n");
      out.write("            var fr = new FileReader();\n");
      out.write("            fr.onload = function (e)\n");
      out.write("            {\n");
      out.write("                showDataFile(e, o);\n");
      out.write("            };\n");
      out.write("            fr.readAsText(o.files[0]);\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        function showDataFile(e, o)\n");
      out.write("        {\n");
      out.write("            document.getElementById(\"data\").innerText = e.target.result;\n");
      out.write("        }\n");
      out.write("    </script>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <!-- ***** Preloader Start ***** -->\n");
      out.write("        <div id=\"js-preloader\" class=\"js-preloader\">\n");
      out.write("            <div class=\"preloader-inner\">\n");
      out.write("                <span class=\"dot\"></span>\n");
      out.write("                <div class=\"dots\">\n");
      out.write("                    <span></span>\n");
      out.write("                    <span></span>\n");
      out.write("                    <span></span>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!-- ***** Preloader End ***** -->\n");
      out.write("\n");
      out.write("        <!-- ***** Header Area Start ***** -->\n");
      out.write("        <header class=\"header-area header-sticky wow slideInDown\" data-wow-duration=\"0.75s\" data-wow-delay=\"0s\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-12\">\n");
      out.write("                        <nav class=\"main-nav\">\n");
      out.write("                            <!-- ***** Menu Start ***** -->\n");
      out.write("                            <ul class=\"nav\">\n");
      out.write("                                <li><a href=\"userHome.jsp\">Home</a></li>\n");
      out.write("                                <li><a class=\"active\" href=\"uploadFiles.jsp\">Upload Files</a></li>\n");
      out.write("                                <li><a href=\"myFiles.jsp\">My Files</a></li>\n");
      out.write("                                <li><a href=\"index.jsp\">Logout</a></li>\n");
      out.write("                                <li><a href=\"index.jsp\">Home</a></li>\n");
      out.write("                            </ul>        \n");
      out.write("                            <a class='menu-trigger'>\n");
      out.write("                                <span>Menu</span>\n");
      out.write("                            </a>\n");
      out.write("                            <!-- ***** Menu End ***** -->\n");
      out.write("                        </nav>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </header>\n");
      out.write("        <!-- ***** Header Area End ***** -->\n");
      out.write("\n");
      out.write("        <div class=\"page-heading\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-lg-12\">\n");
      out.write("                        <div class=\"top-text header-text\">\n");
      out.write("                            <h2>Design of Secure Authenticated Key\n");
      out.write("                                Management Protocol for Cloud Computing Environments</h2>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"contact-page\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-lg-12\">\n");
      out.write("                        <div class=\"inner-content\"><br>\n");
      out.write("                            <center><h2>Upload Files</h2></center><br><br>\n");
      out.write("                            <div class=\"row\">\n");
      out.write("                                <div class=\"col-lg-6\">\n");
      out.write("                                    <img src=\"images/upload.png\" width=\"300\" height=\"300\" />\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-lg-6 align-self-center\">\n");
      out.write("                                    <form id=\"contact\" action=\"upload\" method=\"post\" enctype=\"multipart/form-data\">\n");
      out.write("                                        <div class=\"row\">\n");
      out.write("                                            <div class=\"col-lg-12\">\n");
      out.write("                                                <fieldset>\n");
      out.write("                                                    <label>File Keyword :</label>\n");
      out.write("                                                    <input type=\"text\" name=\"filekeyword\" id=\"name\" placeholder=\"Enter File Keyword\" required=\"\">\n");
      out.write("                                                </fieldset>\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"col-lg-12\">\n");
      out.write("                                                <fieldset>\n");
      out.write("                                                    <label style=\"float: left\">Select File :</label>\n");
      out.write("                                                    <input type=\"file\"  onchange=\"loadFile(this)\" name=\"fileToUpload\" accept=\"text/plain\" required=\"\">\n");
      out.write("                                                </fieldset>\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"col-lg-12\">\n");
      out.write("                                                <fieldset>\n");
      out.write("                                                    <label style=\"float: left\">Preview File :</label>\n");
      out.write("                                                    <textarea readonly=\"\" pre id=\"data\" style=\" height:100px\"></textarea>\n");
      out.write("                                                </fieldset>\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"col-lg-12\">\n");
      out.write("                                                <fieldset>\n");
      out.write("                                                    <button type=\"submit\" id=\"form-submit\" class=\"main-button \"><i class=\"fa fa-paper-plane\"></i> Login</button>\n");
      out.write("                                                    <br><br><br><br>\n");
      out.write("                                                </fieldset>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </form>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <footer>\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-lg-12\">\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </footer>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- Scripts -->\n");
      out.write("        <script src=\"vendor/jquery/jquery.min.js\"></script>\n");
      out.write("        <script src=\"vendor/bootstrap/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("        <script src=\"assets/js/owl-carousel.js\"></script>\n");
      out.write("        <script src=\"assets/js/animation.js\"></script>\n");
      out.write("        <script src=\"assets/js/imagesloaded.js\"></script>\n");
      out.write("        <script src=\"assets/js/custom.js\"></script>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("\n");
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
