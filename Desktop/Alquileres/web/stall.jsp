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
        <br><br><br><br><br><br>
        <form action="NewStall" method="POST" onsubmit="return validarNuevoPuesto();">
            <table>
                <tr>
            <p>
            <td><label>Piso:</label></td>
            <td><input class="form-control" width="80%" type="text" name="floor" id="txtFloor" required /></td>
            </p>
                </tr>
                <tr>
            <p>
            <td><label>Cantidad de Sillas:</label></td>
            <td><input class="form-control" width="80%" type="text" name="chairsAmount" id="txtChairsAmount" required /></td>
            </p>
                </tr>
                <tr>
            <p>
            <td><label>Tiene Ventanas:</label></td>
            <td><input class="checkbox-inline" type="checkbox" name="withWindows" /></td>
            </p>
                </tr>
                <tr>
                    <td></td><td><input type="submit" value="Aceptar" class="btn btn-primary" /></td>
                </tr>
            </table>
        </form>
    </body>
</html>
