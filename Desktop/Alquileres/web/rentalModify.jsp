<%-- 
    Document   : rentalModify
    Created on : Nov 8, 2017, 1:47:41 AM
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
        <title>Modificar el Alquiler</title>
        <jsp:include page="links.jsp"></jsp:include>
            <script src="validar.js" type="text/javascript"></script>
        </head>
        <body>
        <jsp:include page="menu.jsp"></jsp:include>
            <form action="AlterRental" method="POST" onsubmit="return validarNuevoAlquiler();">
            <input type="hidden" name="idRental" value="<%= request.getParameter("idRental") %>">
            <p>
                <label>Cantidad de Computadoras:</label><input type="text" name="computersAmount" value="${rental.getComputersAmount()}" id="txtComputersAmount" required />
            </p>
            <p>
                <label>Cantidad Extra de Sillas:</label><input type="text" name="extraChairsAmount" value="${rental.getExtraChairsAmount()}" id="txtExtraChairsAmount" required />
            </p>
            <p>
                <c:if test="${rental.isHasRoomAccess()}">
                    <label>Tiene Acceso a Sala:</label><input type="checkbox" name="hasRoomAccess" checked />
                </c:if>
                <c:if test="${!rental.isHasRoomAccess()}">
                    <label>Tiene Acceso a Sala:</label><input type="checkbox" name="hasRoomAccess" />
                </c:if>
            </p>
            <input type="submit" value="Aceptar" class="btn btn-primary" />
        </form>
    </body>
</html>