<%-- 
    Document   : vetor_5
    Created on : 30/03/2017, 17:49:03
    Author     : haguilar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <% String pass = request.getParameter("pass");%>
    <body>
        <h1>Questão 5</h1>
        <% if (pass == null){ %>
            <form action="vetor_5" method="POST">
                Infome o tamanho do vetor:
                <input type="text" name="max"/>
                <input type="submit" value="Enviar"/>
            </form>
        <%} else if(pass.equals("getValores")){%>
            <form action="vetor_5" method="POST">
                
            </form> 
    </body>
</html>
