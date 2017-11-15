<%-- 
    Document   : rental
    Created on : Nov 7, 2017, 12:39:26 AM
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
        <title>Nuevo Alquiler</title>
        <jsp:include page="links.jsp"></jsp:include>
        <script src="validar.js" type="text/javascript"></script>
    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>
        <br><br><br><br><br><br>
        <form action="NewRental" method="POST" onsubmit="return validarNuevoAlquiler();" >
            <table>
               <tr>
               <td><label>Cliente:</label></td>
               <td>
                <select name="client" class="form-control">
                <c:forEach items="${clients}" var="clientV" >
                    <option value="${clientV.getIdClient()}">${clientV.getClientSurename()}, ${clientV.getClientName()}</option>
                </c:forEach>
                </select>
                </td>
                </tr><br>
                <tr>
                <td><label>Puesto:</label></td>
                    <td>
                    <select name="stall" class="form-control">
                <c:forEach items="${stalls}" var="stallV" >
                    <option value="${stallV.getId()}">${stallV.toString()}</option>
                </c:forEach>
                    </select>
                    </td>
                </tr>
                <tr>
                <p>
                <td><label>Cantidad de Computadoras:</label></td>
               <td><input class="form-control" width="80%" type="text" name="computersAmount" id="txtComputersAmount" required /></td>
                </p>
                </tr>
            <tr>
                <p>
                <td><label>Cantidad Extra de Sillas:</label></td>
                <td><input class="form-control" width="80%" type="text" name="extraChairsAmount" id="txtExtraChairsAmount" required /></td>
            </p>
                </tr>
                <tr>
            <p>
            <td><label>Tiene Acceso a Sala:</label></td>
            <td><input type="checkbox" name="hasRoomAccess" id="chkHasRoomAccess" /></td>
            </p>
            </tr>
            <tr>
                <td></td><td><input type="submit" value="Aceptar" class="btn btn-primary" /></td>
            </tr>
            </table>
                
        </form>
    </body>
</html>