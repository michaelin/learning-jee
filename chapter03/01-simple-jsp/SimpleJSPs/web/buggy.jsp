<%-- 
    Document   : buggy
    Created on : 20-10-2013, 22:32:09
    Author     : michael
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Buggy JSP Page</title>
    </head>
    <body>
        <p>
            This page will never be shown in the browser as the page will throw an exception before it renders.
        </p>
        <%
            Object o = null;
            out.print(o.toString()); // NullReferenceException thrown here.
        %>
    </body>
</html>
