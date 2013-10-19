<%-- 
    Document   : implicitobjects
    Created on : 19-10-2013, 23:12:58
    Author     : michael
--%>

<%@page import="java.util.Enumeration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Implicit Objects Demo</title>
    </head>
    <body>
        <p>
            This page uses JSP implicit object to attach objects to the request, session and application scopes.<br/>
            It also retrieves some initialization parameters set in the web.xml configuration file.<br/>
            The third thing it does is get the buffer size from the implicit response object.
        </p>
        <p>
            <%
                application.setAttribute("applicationAttribute", new String("This string is accessible across sessions."));
                session.setAttribute("sessionAttribute", new String("This string is accessible across requests."));
                request.setAttribute("requestAttribute", new String("This string is accessible in a single request."));
                
                out.print("Initialization parameters obtained from the implicit config object:<br/><br/>");
                Enumeration initParameterNames = config.getInitParameterNames();
                while (initParameterNames.hasMoreElements()) {
                    String parameterName = (String) initParameterNames.nextElement();
                    out.print(parameterName + " = " + config.getInitParameter(parameterName));
                    out.print("</br>");
                }
                
                out.print("</br>");
                out.print("Implicit object <b>page</b> is of type <b>" + page.getClass().getName() + "</b><br/>");
                out.print("Buffer size is <b>" + response.getBufferSize() + " bytes</b>");
            %>
        </p>
        <p>
            <a href="implicitobjects2.jsp">Click here to continue</a>
        </p>
    </body>
</html>
