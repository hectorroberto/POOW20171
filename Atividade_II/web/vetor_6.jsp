<%-- 
    Document   : vetor_6
    Created on : 01/04/2017, 00:28:15
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
        <h1>Questão 06</h1>
        <form action="vetor_6" method="POST">
            <%for(int i = 0; i < 10;i++){%>
                [<%=i+1%>]Informe a nota: <input type="text" name="nota<%=i%>" placeholder="Nota..."/><br/><br/>
            <%}%>
            <br/><br/>
            <input type="submit" value="Enviar"/>
        </form>
    </body>
</html>
