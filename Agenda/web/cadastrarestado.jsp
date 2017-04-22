<%-- 
    Document   : cadastrarestado
    Created on : 05/05/2016, 20:25:32
    Author     : lab
--%>

<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="index.html" %>
        <h1>Adiconar Estado</h1>
        <form action="cadastrarestado" method="POST">
            Estado: <input type="text" name="estado"/>
            <input type="submit" value="Adicionar"/>
            <a href="listar.jsp">Cancelar</a>
            <a href="index.html">Inicio</a>
        </form>
    </body>
</html>
