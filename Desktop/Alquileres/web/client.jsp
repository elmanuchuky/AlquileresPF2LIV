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

            <script src="validar.js" type="text/javascript"></script>

        </head>
        <body>
        <jsp:include page="menu.jsp"></jsp:include>
        <br><br><br><br><br><br>
            <form action="NewClient" method="POST" onsubmit="return validarNuevoCliente();" >
                <table>
                    <tr>
                    <p>
                    <td><label>Nombre:</label></td>
                    <td><input  class="form-control" width="80%" type="text" name="clientName" id="txtName" required /></td>
                    </p>
                    </tr>
                    <tr>
                    <p>
                    <td><label>Apellido:</label></td>
                    <td><input class="form-control" width="80%" type="text" name="clientSurename" id="txtSurename" required/></td>
                    </p>
                    </tr>
                    <tr>
                    <p>
                    <td><label>Mail:</label></td>
                    <td><input class="form-control" width="80%" type="text" name="clientMail" id="txtMail" required/></td>
                    </p>
                    </tr>
                    <tr>
                    <p>
                    <td><label>Telefono:</label></td>
                    <td><input class="form-control" width="80%" type="text" name="clientPhone" id="txtPhone" required/></td>
                    </p>
                    </tr>
                    <tr>
                    <p>
                    <td><label>Documento:</label></td>
                    <td><input class="form-control" width="80%" type="text" name="clientDocument" id="txtDocument" required/></td>
                    </p>
                    </tr>
                    <tr>
                    <p>
                    <td><label>Tipo de documento:</label></td>
                    <td> <select name="clientDocumentType" class="form-control">
                        <c:forEach items="${types}" var="typeV">
                            <option value="${typeV.getIdDocumentType()}">${typeV.getDocumentType()}</option>
                        </c:forEach>
                    </select></td>
                </p>
                </tr>
                <tr><td></td><td><input type="submit" value="Aceptar" class="btn btn-primary" /></td></tr>
            </table>
        </form>
    </body>
</html>
