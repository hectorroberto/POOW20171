<%-- 
    Document   : while_2
    Created on : 24/03/2017, 01:35:29
    Author     : Hector
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%String status = request.getParameter("status");%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%if (status == null){ %>
            <h1>While: Questão 2</h1>
            <form action="while_2" method="POST">
                Informe um valor:
                <input type="text" name="num1"/><br/>
                Informe outro valor:
                <input type="text" name="num2"/><br/><br/>
                <input type="submit" value="Enviar"/>
            </form>
            
        <%} else if (status.equals("repetir")){ %>
        <form action="while_2" method="POST">
            <h1> Erro de valores informados </h1>
            <h5> Por favor, informe valores acima de 0. </h5>
            Informe outro valor: 
            <input type="text" name="num1"/><br/>
            Informe um valor diferente:
            <input type="text" name="num2"/><br/><br/>
            <input type="submit" value="Enviar"/>
            <% status = null;%>
        </form>
        <% } else if(status.equals("prosseguir")){ %>
            <form action="while_2" method="POST">
                <input type="radio" name="escolha" value="1"/> Somar <br/>
                <input type="radio" name="escolha" value="2"/> Subtrair <br/>
                <input type="radio" name="escolha" value="3"/> Dividir <br/>
                <input type="submit" value="Enviar"/>
                <%status="prosseguir"; %>
            </form>
        <% } %>    
    </body>
</html>
