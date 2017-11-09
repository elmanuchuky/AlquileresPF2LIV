<%-- 
    Document   : test
    Created on : Nov 7, 2017, 7:38:23 PM
    Author     : Fernando M. de Lima
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Controllers.*"%>
<%@page import="Model.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    ClientManager con = new ClientManager();
    ArrayList clientsList = con.GetClientsWhoRent();
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
                <th>Apellido</th><th>Nombre</th><th>Documento</th><th>Cantidad de Puestos</th><th>Importe Total</th><th>Detalle</th>
            </tr>
            <% for (Object client : clientsList) {
                    VMVwListadoClientes c = (VMVwListadoClientes) client;
            %>
            <tr>
                <td><%= c.getSureName() %></td>
                <td><%= c.getName() %></td>
                <td><%= c.getDocument() %></td>
                <td><%= c.getStalls() %></td>
                <td>$<%= c.getTotal() %></td>
                <td><a href="/Alquileres/ClientsDetails?idClient=<%= c.getId() %>">Ver</a></td>
            </tr>
            <% } %>
        </table>
    </body>
</html>
