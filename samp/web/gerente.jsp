<%-- 
    Document   : gerente
    Created on : 08/05/2017, 01:50:41
    Author     : Hector Roberto
--%>

<%@page import="modelo.Gerente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gerente - SAMP</title>
        <% 
            if(session.getAttribute("gerente") == null){
               response.sendRedirect("logingerente.jsp");
           }
            Gerente gerente = (Gerente) session.getAttribute("gerente");
        %>
    </head>
    <body>
        <h1>Bem vindo, <%=gerente.getNome()%></h1>
        <a href="cadastraraluno.jsp"> Cadastrar aluno</a>
        <a href="cadastrarcursos.jsp"> Cadastrar Cursos</a>
    </body>
</html>