<%-- 
    Document   : implicitobjects2
    Created on : 20-10-2013, 21:59:46
    Author     : michael
--%>

<%@page import="java.util.Enumeration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sanity Check</title>
    </head>
    <body>
        <p>
            This page makes sure that we can retrieve the application, session and request attributes set in the
            previous page
        </p>
        <p>
            applicationAttribute is: <b><%= application.getAttribute("applicationAttribute") %></b><br/>
            sessionAttribute is: <b><%= session.getAttribute("sessionAttribute") %></b><br/>
            requestAttribute is: <b><%= request.getAttribute("requestAttribute") %></b>
        </p>
        <p>
            The following attributes were found in the application scope:<br/><br/>
            <%
                Enumeration applicationAttributeNames = pageContext.getAttributeNamesInScope(pageContext.APPLICATION_SCOPE);
                while (applicationAttributeNames.hasMoreElements()) {
                    out.println(applicationAttributeNames.nextElement() + "<br/>");
                }
            %>
        </p>
        <p>
            <a href="buggy.jsp">This hyperlink points to a jsp page that thow an exception.</a>
        </p>
    </body>
</html>