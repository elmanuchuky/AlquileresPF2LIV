<%-- 
    Document   : stallsAvailables
    Created on : Nov 8, 2017, 2:59:16 AM
    Author     : Fernando M. de Lima
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Controllers.*"%>
<%@page import="Model.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    StallManager con = new StallManager();
    ArrayList stallsList = con.GetAvailableStalls();
    %>
    
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
                <th>Id Puesto</th><th>Piso</th><th>Cantidad de Sillas</th><th>Ventana</th><th>Precio Base</th>
            </tr>
            <% for (Object stall : stallsList) {
                    VMAvailableStalls s = (VMAvailableStalls) stall;
            %>
            <tr>
                <td><%= s.getId() %></td>
                <td><%= s.getFloor() %></td>
                <td><%= s.getChairsAmount() %></td>
                <% if (s.isWithWindows()) { %>
                <td>Tiene</td>
                <% } else { %>
                <td>No Tiene</td>
                <% } %>
                <td>$<%= s.getBasePrice() %></td>
            </tr>
            <% } %>
        </table>
    </body>
</html>