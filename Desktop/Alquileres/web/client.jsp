<%-- 
    Document   : client
    Created on : Nov 6, 2017, 8:36:18 PM
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
        <script src="src/validarClient.js" type="text/javascript"></script>
        </head>
        <body>
        <jsp:include page="menu.jsp"></jsp:include>
            <form action="NewClient" method="POST" onsubmit="return validar();">
                <p>
                    <label>Nombre:</label><input type="text" name="clientName" id="txtName" required />
                </p>
                <p>
                    <label>Apellido:</label><input type="text" name="clientSurename" id="txtSurename" required/>
                </p>
                <p>
                    <label>Mail:</label><input type="text" name="clientMail" id="txtMail" required/>
                </p>
                <p>
                    <label>Telefono:</label><input type="text" name="clientPhone" id="txtPhone" required/>
                </p>
                <p>
                    <label>Documento:</label><input type="text" name="clientDocument" id="txtDocument" required/>
                </p>
                <p>
                    <label>Tipo de documento:</label><select name="clientDocumentType">
                    <c:forEach items="${types}" var="typeV">
                        <option value="${typeV.getIdDocumentType()}">${typeV.getDocumentType()}</option>
                    </c:forEach>
                </select>
            </p>
            <input type="submit" value="Aceptar" class="btn btn-primary" />
        </form>
    </body>
</html>
