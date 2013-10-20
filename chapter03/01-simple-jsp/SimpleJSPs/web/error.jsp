<%-- 
    Document   : error
    Created on : 20-10-2013, 22:27:36
    Author     : michael
--%>

<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.StringWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>There was an error in the application.</title>
    </head>
    <body>
        <h2>Exception caught</h2>
        <p>
            Stack trace  for the exception:<br/>
            <%
                StringWriter stringWriter = new StringWriter();
                PrintWriter printWriter = new PrintWriter(stringWriter);
                exception.printStackTrace(printWriter);
                out.write(stringWriter.toString());
            %>
        </p>
    </body>
</html>
