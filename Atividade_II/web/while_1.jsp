<%-- 
    Document   : while_1
    Created on : 23/03/2017, 23:40:47
    Author     : Hector
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%String repetir = request.getParameter("repetir");%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% if (repetir == null) { %>
            <h1>While: Questão 1</h1>
            <form action="while_1" method="POST">
                Informe uma palavra:
                <input type="text" name="palavra"/> <br/><br/>
                <input type="submit" value="Enviar"/>
            </form>
        <%} else{%>
            <h1> Palavra errada. Por favor, insira novamente. </h1>
            <form action="while_1" method="POST">
                Informe uma palavra:
                <input type="text" name="palavra"/><br/><br/>
                <input type="submit" value="Enviar"/>
            </form>
            <% repetir=null; %>
        <%}%> 
    </body>
</html>
