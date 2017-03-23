<%-- 
    Document   : questao12
    Created on : 23/03/2017, 09:11:43
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
        <h1>Questão 12</h1>
        <form action="questao12" method=" POST">
            <%  int i;
                for (i = 0; i < 5; i++) {
            %>
            Informe seu nome:
            <input type="text" name="nome"> <br/>
            Informe sua nota: 
            <input type="text" name="nota"> <br/>
            
            <% } %>
            
        </form>
    </body>
</html>
