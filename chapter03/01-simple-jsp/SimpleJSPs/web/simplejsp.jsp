<%-- 
    Document   : simplejsp
    Created on : 19-10-2013, 22:28:13
    Author     : michael
--%>

<%@page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.Date" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Server Date and Time</title>
    </head>
    <body>
        <p>Server date and time: <% out.print(new Date()); %></p>
    </body>
</html>
