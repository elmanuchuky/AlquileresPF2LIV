<%-- 
    Document   : floor
    Created on : Nov 8, 2017, 2:27:25 AM
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
                    <th>Piso</th><th>Total Recaudado</th>
                </tr>
            <c:forEach items="${floors}" var="floorV">
                <tr>
                    <td>${floorV.getFloor()}</td>
                    <td>${floorV.getTotal()}</td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
