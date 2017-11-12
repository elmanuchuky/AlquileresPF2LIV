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
        <form action="Login" method="POST">
            <p>
                <label>Mail:</label><input type="mail" name="mail" />
            </p>
            <p>
                <label>Contraseña:</label><input type="password" name="password" />
            </p>
            <input type="submit" value="Aceptar">
        </form>
    </body>
</html>