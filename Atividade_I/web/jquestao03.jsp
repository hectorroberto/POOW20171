<%-- 
    Document   : jquestao03
    Created on : 09/03/2017, 23:26:25
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
        <h1>Questão 03</h1>
        <form action="squestao03" method="POST">
             Informe sua idade:
             <input type="text" name = "idade"><br/><br/>
             Informe seu estado civil: <br/>
             <input type="radio" name="estadoCivil" value="1"/> Solteiro
             <input type="radio" name="estadoCivil" value="2"/> Casado <br/> <br/>
             Informe sua escolaridade: <br/>
             <input type="radio" name="escolaridade" value="1"/> Segundo grau completo
             <input type="radio" name="escolaridade" value="2"/> Segundo grau incompleto <br/>
             <br/>
             <input type="submit" value="Enviar">
    </body>
</html>
