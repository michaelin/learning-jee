<%-- 
    Document   : beanproperties1
    Created on : 20-10-2013, 23:36:53
    Author     : michael
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="customer" class="dk.michaelin.learningjee.javabeanproperties.CustomerBean" scope="page"></jsp:useBean>
<jsp:setProperty name="customer" property="*"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JavaBean Properties</title>
    </head>
    <body>
        <p>
            Call page with ?firstName=x&lastName=y. Values are automatically mapped to the bean.
        </p>
        <form>
            <table>
                <tr>
                    <td align="right">First Name:</td>
                    <td>
                        <input type="text" name="firstName" value='<jsp:getProperty name="customer" property="firstName"/>' />
                    </td>
                </tr>
                <tr>
                    <td align="right">Last Name:</td>
                    <td>
                        <input type="text" name="lastName" value='<jsp:getProperty name="customer" property="lastName"/>' />
                    </td>
                </tr>
                <tr>
                    <td/>
                    <td><input type="submit" value="Submit"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
