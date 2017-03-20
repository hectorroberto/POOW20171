<%-- 
    Document   : jquestao04
    Created on : 10/03/2017, 09:01:54
    Author     : Administrador
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% String situacao = request.getParameter("situacao");%> 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Page JSP - 04</title>
    </head>
    <body>
       <% if(situacao == null) {%> 
        <h1>Questão 4</h1> 
        <label> Informe sua nota </label> 
        <form  action="squestao04" method="POST">  
            <input type="text" name="nota"/> 
            <input type="submit" value="Enviar"/> 
        </form> 
        <% }else{ %> 
        <h1>Exame!</h1> 
        <label> Informe sua nota no examen </label> 
        <form  action="squestao04" method="POST"> 
            <input type="text" name="notaexame"/> 
            <input type="submit" value="Enviar"/> 
        </form> 
        <% } %> 
    </body> 
</html>
