<%-- 
    Document   : clientDetail
    Created on : Nov 8, 2017, 3:05:26 AM
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
        <title>Detalle de Cliente</title>
        <jsp:include page="links.jsp"></jsp:include>
        </head>
        <body>
        <jsp:include page="menu.jsp"></jsp:include>
            <h1>Listado de Clientes</h1>
            <h2>${clientDetails.toString()}</h2>        
        <table border="1" class="table table-striped table-hover table-dark">
            <tr>
                <th>Piso</th><th>Cantidad de Sillas</th><th>Ventana</th><th>Precio Base</th>
            </tr>
            <c:forEach items="${stalls}" var="stallV">
                <tr>
                    <td>${stallV.getPiso()}</td>
                    <td>${stallV.getCantidad_de_sillas()}</td>
                    <c:if test="${stallV.getTiene_ventana()}">
                        <td>No Tiene</td>
                    </c:if>
                    <c:if test="${!stallV.getTiene_ventana()}">
                        <td>Tiene</td>
                    </c:if>
                    <td>$${stallV.getPrecio()}</td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>