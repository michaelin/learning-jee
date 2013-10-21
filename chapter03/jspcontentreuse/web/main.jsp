<%-- 
    Document   : jspcontentreuse
    Created on : 21-10-2013, 22:05:09
    Author     : michael
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% String pageName="Main"; %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Main Page</title>
    </head>
    <body>
        <table border="1">
            <tr>
                <td>
                    <%@ include file="WEB-INF/jspf/navigation.jspf"%>
                </td>
                <td>This is the main page.</td>
            </tr>
        </table>
    </body>
</html>
