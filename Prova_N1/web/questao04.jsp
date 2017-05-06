<%-- 
    Document   : questao04
    Created on : 06/04/2017, 20:53:36
    Author     : Laboratorio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Questão 04</h1>
        <form action="questao04" method="POST">
            Informe sua altura em centímetros:
            <input type="text" name="h"/><br/>
            <input type="radio" name="sexo" value="0"/> Feminino <br/>
            <input type="radio" name="sexo" value="1"/> Masculino <br/><br/>
            <input type="submit" value="Enviar"/>
        </form>
    </body>
</html>
