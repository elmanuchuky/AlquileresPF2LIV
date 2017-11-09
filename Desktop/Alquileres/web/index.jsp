<%-- 
    Document   : index
    Created on : Nov 8, 2017, 11:15:18 AM
    Author     : Fernando M. de Lima
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alquileres</title>
        <jsp:include page="links.jsp"></jsp:include>
    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>
        <h1>Bienvenido al sitio de Alquileres !!!</h1>
        <% HttpSession mySession = request.getSession();
        mySession.setAttribute("isLogged", false);
        %>
    </body>
</html>
