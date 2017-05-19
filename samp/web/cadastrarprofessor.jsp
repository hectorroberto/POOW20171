<%-- 
    Document   : cadastrarprofessor
    Created on : 11/05/2017, 21:09:11
    Author     : Laboratorio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SAMP</title>
        <%@include file="certificadogerente.jsp" %>
    </head>
    <body>
        <h1>Cadastrar Professor</h1>
         <form action="cadastrarprofessor" method="POST">
            Informe o nome do Professor:
            <input type="text" name="nome" required="required" /><br/>
            <input type="submit" value="Adicionar"/>
        </form>
    </body>
</html>
