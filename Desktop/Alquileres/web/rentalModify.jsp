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
        <br><br><br><br><br><br>
            <form action="AlterRental" method="POST" onsubmit="return validarNuevoAlquiler();">
                <table>
                    <tr>
                <input type="hidden" name="idRental" value="<%= request.getParameter("idRental") %>">
                    </tr>
                    <tr>
            <p>
                <td><label>Cantidad de Computadoras:</label></td>
                <td><input class="form-control" width="80%" type="text" name="computersAmount" value="${rental.getComputersAmount()}" id="txtComputersAmount" required /></td>
            </p>
                    </tr>
                    <tr>
            <p>
                <td><label>Cantidad Extra de Sillas:</label></td>
                <td><input class="form-control" width="80%" type="text" name="extraChairsAmount" value="${rental.getExtraChairsAmount()}" id="txtExtraChairsAmount" required /></td>
            </p>
                    </tr>
                <tr>
            <p>
                
                <c:if test="${rental.isHasRoomAccess()}">
                    <td><label>Tiene Acceso a Sala:</label></td>
                    <td><input class="checkbox-inline" type="checkbox" name="hasRoomAccess" checked /></td>
                </c:if>
                </tr>
                <tr>
                <c:if test="${!rental.isHasRoomAccess()}">
                    <td><label>Tiene Acceso a Sala:</label></td>
                    <td><input class="checkbox-inline" type="checkbox" name="hasRoomAccess" /></td>
                </c:if>
            </p>
            </tr>
            <tr>
            <td></td><td><input type="submit" value="Aceptar" class="btn btn-primary" /></td>
             </tr>  
            </table>
        </form>
    </body>
</html>