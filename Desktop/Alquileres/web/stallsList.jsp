<%-- 
    Document   : stallsList
    Created on : Nov 8, 2017, 2:47:50 AM
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
                    <th>Id Puesto</th><th>Piso</th><th>Cantidad de Sillas</th><th>Ventana</th><th>Estado</th><th>Precio Base</th>
                </tr>
            <c:forEach items="${list}" var="stallV">
                <tr>
                    <td>${stallV.getIdStall()}</td>
                    <td>${stallV.getFloor()}</td>
                    <td>${stallV.getChairsAmount()}</td>
                    <c:if test="${stallV.isWithWindows()}">
                        <td>Tiene</td>
                    </c:if>
                    <c:if test="${!stallV.isWithWindows()}">
                        <td>No Tiene</td>
                    </c:if>
                    <c:if test="${stallV.isAvailable()}">
                        <td>Disponible</td>
                    </c:if>
                    <c:if test="${!stallV.isAvailable()}">
                        <td>No Disponible</td>
                    </c:if>
                    <td>${stallV.getBasePrice()}</td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>