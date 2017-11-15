<%-- 
    Document   : login
    Created on : Nov 8, 2017, 11:20:58 AM
    Author     : Fernando M. de Lima
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicie Sesion</title>
        <jsp:include page="links.jsp"></jsp:include>
    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>
        <h1>Inicia sesion !!!</h1>
        <br><br><br><br><br><br>
        <form action="Login" method="POST">
            <table>
                <tr>
            <p>
            <td><label>Mail:</label></td>
            <td><input class="form-control" width="80%" type="mail" name="mail" /></td>
            </p>
                </tr>
                <tr>
            <p>
                <td><label>Contraseña:</label></td>
                <td><input class="form-control" width="80%" type="password" name="password" /></td>
            </p>
                </tr>
                <tr>
                    <td></td><td><input type="submit" value="Aceptar"></td>
                </tr>
            </table>
        </form>
    </body>
</html>