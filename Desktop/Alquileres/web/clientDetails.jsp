<%-- 
    Document   : clientDetail
    Created on : Nov 8, 2017, 3:05:26 AM
    Author     : Fernando M. de Lima
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Controllers.*"%>
<%@page import="Model.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    ClientManager con = new ClientManager();
    String idClient = request.getParameter("idRental");
    int idClientN = Integer.parseInt(idClient);
    VMSpDetalleCliente clientDetails = con.GetClientDataImport(idClientN);
    StallManager co = new StallManager();
    ArrayList stalls = co.GetStallsPerClient(idClientN);
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
        <h2><%= clientDetails.toString() %></h2>        
        <table border="1" class="table table-striped table-hover table-dark">
            <tr>
                <th>Piso</th><th>Cantidad de Sillas</th><th>Cantidad de Sillas</th><th>Ventana</th><th>Precio Base</th>
            </tr>
            <% for (Object stall : stalls) {
                    VmSpDetallePuestosAlquiladosCliente s = (VmSpDetallePuestosAlquiladosCliente) stall;
            %>
            <tr>
                <td><%= s.getPiso() %></td>
                <td><%= s.getCantidad_de_sillas() %></td>
                <% if (s.getTiene_ventana()) { %>
                <td>Tiene</td>
                <% } else { %>
                <td>No Tiene</td>
                <% } %>
                <td>$<%= s.getPrecio()%></td>
            </tr>
            <% } %>
        </table>
    </body>
</html>