<%-- 
    Document   : cadastrarcoordenador
    Created on : 11/05/2017, 20:22:54
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
        <h1>Cadastrar Coordenador</h1>
        <form action="cadastrarcoordenador" method="POST">
            Informe o nome do Coordenador:
            <input type="text" name="nome" required="required" /><br/>
            <input type="submit" value="Adicionar"/>
        </form>
    </body>
</html>
