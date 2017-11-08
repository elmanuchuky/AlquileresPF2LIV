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
    RentalManager con = new RentalManager();
    ArrayList rentalsList = con.GetRentals();
    %>
    
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
                <th>Apellido</th><th>Nombre</th><th>Mail</th><th>Piso</th><th>Cantidad de Sillas</th><th>Sillas extras</th><th>Ventana?</th><th>Cantidad de Computadoras</th><th>Importe Total</th><th>Fecha</th><th></th>
            </tr>
            <% for (Object rental : rentalsList) {
                    Rental r = (Rental) rental;
            %>
            <tr>
                <td><%= r.getClient().getClientSurename() %></td>
                <td><%= r.getClient().getClientName() %></td>
                <td><%= r.getClient().getClientMail() %></td>
                <td><%= r.getStall().getFloor() %></td>
                <td><%= r.getStall().getChairsAmount() %></td>
                <td><%= r.getExtraChairsAmount() %></td>
                <td><%= r.getStall().isWithWindows() %></td>
                <td><%= r.getComputersAmount() %></td>
                <td>$<%= r.getTotalPrice() %></td>
                <td><%= r.getDate() %></td>
                <td>
                    <form action="AlterRental" method="GET">
                        <% HttpSession sessionId = request.getSession();
                        sessionId.setAttribute("idRentalModify", r.getIdRental()); %>
                        <input type="submit" value="Modificar" class="btn btn-primary" />
                    </form>
                </td>
            </tr>
            <% } %>
        </table>
    </body>
</html>
