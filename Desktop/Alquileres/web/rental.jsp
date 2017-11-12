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
    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>
        <form action="NewRental" method="POST">
                <label>Cliente:</label><select name="client">
                <c:forEach items="${clients}" var="clientV" >
                    <option value="${clientV.getIdClient()}">${clientV.getClientSurename()}, ${clientV.getClientName()}</option>
                </c:forEach>
                </select><br>
                <label>Puesto:</label><select name="stall">
                <c:forEach items="${stalls}" var="stallV" >
                    <option value="${stallV.getId()}">${stallV.toString()}</option>
                </c:forEach>
            </select>
            <p>
                <label>Cantidad de Computadoras:</label><input type="text" name="computersAmount" />
            </p>
            <p>
                <label>Cantidad Extra de Sillas:</label><input type="text" name="extraChairsAmount" />
            </p>
            <p>
                <label>Tiene Acceso a Sala:</label><input type="checkbox" name="hasRoomAccess" />
            </p>
            <input type="submit" value="Aceptar" class="btn btn-primary" />
        </form>
    </body>
</html>