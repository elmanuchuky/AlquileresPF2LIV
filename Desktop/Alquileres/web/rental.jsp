<%-- 
    Document   : rental
    Created on : Nov 7, 2017, 12:39:26 AM
    Author     : Fernando M. de Lima
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Controllers.*"%>
<%@page import="Model.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    ClientManager con = new ClientManager();
    StallManager co = new StallManager();
    ArrayList clients = con.GetClients();
    ArrayList stalls = con.GetStalls();
    %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <jsp:include page="links.jsp"></jsp:include>
    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>
        <form action="NewClient" method="POST">
    boolean state;
                <label>Cliente:</label><select name="client">
                <% 
                for(Object type : clients)
                {
                    Client c = (Client)type;
                %>
                <option value="<%= c.getClientSurename() + ", " + c.getClientName()%>"><%= c.getDocumentType()%></option>
                <% } %>
            </select>
                <label>Puesto:</label><select name="stall">
                <% 
                for(Object type : stalls)
                {
                    Stall s = (Stall)type;
                %>
                <option value="<%= s.getIdStall()%>"><%= s.toString() %></option>
                <% } %>
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