<%-- 
    Document   : questao01
    Created on : 23/03/2017, 15:01:38
    Author     : bruna.goncalves
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Questão 01 While </title>
    </head>
    <body>
        <h1>Questão 01</h1>
        <form action="questao01" name="senha">
        Senha:  <input type ="password" name="senha1" size="20">
    <br>
        Confirmar Senha: <input type="password" name="senha2" size="20">  
    <br>
                <input type="button" value="validar" onclick="validarSenha()">
        </form>
    </body>
</html>
