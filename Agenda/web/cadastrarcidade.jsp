<%-- 
    Document   : cadastrarcidade
    Created on : 05/05/2016, 20:54:00
    Author     : lab
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelo.Estado"%>
<%@page import="controle.EstadoImpl"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Cidades</title>
    </head>
    <body>
        <%@include file="index.html" %>
        <h1>Adicionar Cidade</h1>
        <form action="cadastrarcidade" method="POST">

            <%
                EstadoImpl estadoImpl = new EstadoImpl();
                List<Estado> list = estadoImpl.getListAll();
            %>

            Estado:
            <select name="estado">
                <% for (Estado e : list) {%>
                <option value="<%=e.getId()%>"><%=e.getNome()%></option>
                <%}%>
            </select><br>
            Cidade:<input type="text" name="cidade"/><br>
            <input type="submit" value="Adcionar Cidade"/>
            <a href="listar.jsp">Cancelar</a>
            <a href="index.html">Inicio</a>
        </form>
    </body>
</html>
