<%-- 
    Document   : first
    Created on : Nov 11, 2017, 5:03:44 PM
    Author     : Fernando M. de Lima
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% HttpSession mySession = request.getSession();
        mySession.setAttribute("isLogged", false);
        getServletContext().getRequestDispatcher("/Index").forward(request, response);
        %>
    </body>
</html>
