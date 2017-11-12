<%-- 
    Document   : stall
    Created on : Nov 6, 2017, 11:39:59 PM
    Author     : Fernando M. de Lima
--%>

<%@page import="Controllers.*"%>
<%@page import="Model.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nuevo Puesto</title>
        <jsp:include page="links.jsp"></jsp:include>
        <script src="validar.js" type="text/javascript"></script>
    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>
        <form action="NewStall" method="POST" onsubmit="return validarNuevoPuesto();">
            <p>
                <label>Piso:</label><input type="text" name="floor" id="txtFloor" required />
            </p>
            <p>
                <label>Cantidad de Sillas:</label><input type="text" name="chairsAmount" id="txtChairsAmount" required />
            </p>
            <p>
                <label>Tiene Ventanas:</label><input type="checkbox" name="withWindows" />
            </p>
            <input type="submit" value="Aceptar" class="btn btn-primary" />
        </form>
    </body>
</html>
