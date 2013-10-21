<%-- 
    Document   : customtagdemo1
    Created on : 21-10-2013, 23:33:04
    Author     : michael
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="d" uri="/WEB-INF/tlds/DemoTagLibrary" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Custom Tag Demo</title>
    </head>
    <body>
        <table>
            <d:labeledTextField name="line1" label="Line 1" value="This is line 1"></d:labeledTextField>
            <d:labeledTextField name="line2" label="Line 2"></d:labeledTextField>
            <d:labeledTextField name="city" label="City"></d:labeledTextField>
            <d:labeledTextField name="state" label="State"></d:labeledTextField>
            <d:labeledTextField name="zip" label="Zip"></d:labeledTextField>
            <tr>
                <td></td>
                <td><input type="submit" value="Submit" /></td>
            </tr>
        </table>
    </body>
</html>
