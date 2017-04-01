<%-- 
    Document   : vetor_10
    Created on : 01/04/2017, 01:18:52
    Author     : Administrador
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Questão 10</h1>
        <form action="vetor_7" method="POST">
            <%for(int i = 0; i < 10;i++){%>
                [<%=i+1%>]Informe o valor do vetor: <input type="text" name="valor<%=i%>" placeholder="Valor..."/><br/><br/>
            <%}%>
            <br/><br/>
            <input type="submit" value="Enviar"/>
        </form>
    </body>
</html>