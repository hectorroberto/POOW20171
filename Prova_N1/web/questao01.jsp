<%-- 
    Document   : questao01
    Created on : 06/04/2017, 19:48:49
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
        <h1>Questão 01</h1>
        <form action="questao01" method="POST">
            Informe os novos valores da gasolina: 
            <input type="text" name="ngasolina"/><br/>
            Infomre os novos valores do alcool:
            <input type="text" name="nalcool"/><br/><br/>
            <input type="submit" value="Enviar"/>
        </form>
    </body>
</html>
