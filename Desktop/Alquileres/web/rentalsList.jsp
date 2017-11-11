<%-- 
    Document   : test
    Created on : Nov 7, 2017, 7:38:23 PM
    Author     : Fernando M. de Lima
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Controllers.*"%>
<%@page import="Model.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <jsp:include page="links.jsp"></jsp:include>
        </head>
        <body>
            <h1>Listado de Clientes</h1>
            <table border="1" class="table table-striped table-hover table-dark">
                <tr>
                    <th>Apellido</th><th>Nombre</th><th>Mail</th><th>Piso</th><th>Cantidad de Sillas</th><th>Sillas extras</th><th>Ventana?</th><th>Accesde a Sala?</th><th>Cantidad de Computadoras</th><th>Importe Total</th><th>Fecha</th><th></th>
                </tr>
            <c:forEach items="${rentalsList}" var="rentalV">
                <tr>
                    <td>${rentalV.getClient().getClientSurename()}</td>
                    <td>${rentalV.getClient().getClientName()}</td>
                    <td>${rentalV.getClient().getClientMail()}</td>
                    <td>${rentalV.getStall().getFloor()}</td>
                    <td>${rentalV.getStall().getChairsAmount()}</td>
                    <td>${rentalV.getExtraChairsAmount()}</td>
                    <td>${rentalV.getStall().isWithWindows()}</td>
                    <td>${rentalV.isHasRoomAccess()}</td>
                    <td>${rentalV.getComputersAmount()}</td>
                    <td>${rentalV.getTotalPrice()}</td>
                    <td>${rentalV.getDate()}</td>
                    <td>
                        <a href="/Alquileres/AlterRental?idRental=${rentalV.getIdRental()}">Editar</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
