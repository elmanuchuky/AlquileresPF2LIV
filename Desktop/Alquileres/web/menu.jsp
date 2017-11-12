<%-- 
    Document   : menu
    Created on : Nov 6, 2017, 9:07:11 PM
    Author     : Fernando M. de Lima
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="/Alquileres/Index">Alquileres</a>
        </div>
        <ul class="nav navbar-nav">
            <li><a href="/Alquileres/NewRental">Alquilar</a></li>
            <li><a href="/Alquileres/RentalsList">Ver Alquileres</a></li>
            <li><a href="/Alquileres/NewStall">Nuevo Puesto</a></li>
            <li><a href="/Alquileres/NewClient">Nuevo Clientes</a></li>
            <li><a href="/Alquileres/GatheredByFloor">Recaudado por Piso</a></li>
            <li><a href="/Alquileres/ClientsList">Clientes</a></li>
            <li><a href="/Alquileres/StallsList">Puestos</a></li>
            <li><a href="/Alquileres/StallsAvailable">Puestos Disponibles</a></li>
                <c:if test="${isLogged}">
                <li><a href="/Alquileres/first.jsp" onclick="alert('Se ha desconectado');">Cerrar Sesion</a></li>
                </c:if>
                <c:if test="${!isLogged}">
                <li><a href="/Alquileres/Login">Iniciar Sesion</a></li>
                </c:if>

        </ul>
    </div>
</nav>