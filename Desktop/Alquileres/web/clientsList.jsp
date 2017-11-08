<%-- 
    Document   : test
    Created on : Nov 7, 2017, 7:38:23 PM
    Author     : Fernando M. de Lima
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Controllers.ClientManager"%>
<%@page import="Model.Client"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <jsp:include page="links.jsp"></jsp:include>
    </head>
    <body>
        <h1>Listado de Clientes</h1>
        
        <table border="1">
            <tr>
                <th>Nombre</th><th>Apellido</th><th>Mail</th><th>Telefono</th><th>Documento</th><th>Tipo de Documento</th><th></th>
            </tr>
            <c:forEach items="${clientsList}" var="l">
                <tr>
                    <td>${l.getClientName}</td>
                    <td>${l.getClientSurename}</td>
                    <td>${l.getClientMail}</td>
                    <td>${l.getPhone}</td>
                    <td>${l.getDocument}</td>
                    <td>${l.getDocumentType}</td>
                    <td></td>
                    
                    <td><a href="/Editar/id=${l.getIdClient}">Modificar</a></td>
                </tr>
            </c:forEach>
            </table>
    </body>
</html>
