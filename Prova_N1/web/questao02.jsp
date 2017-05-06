<%-- 
    Document   : questao02
    Created on : 06/04/2017, 20:07:12
    Author     : Laboratorio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>JSP Page</title>
    </head>
    <% String situacao = request.getParameter("situacao");%>
    <% int i = 0; %>
    <body>
        
            <%if (situacao == null){%>
                <form action="questao02" method="POST">
                    <h1>Questao 02</h1>
                    <% for (i = 0; i < 3; i++){%>
                        [<%=i+1%>] Informe sua nota: 
                        <input type="text" name="nota<%=i%>"/><br/><br/>
                    <%}%>
                    <input type="submit" value="Enviar"/>
                </form>
                    
            <%} else if ((situacao.equals("exame"))){%>
            <form action="questao02" method="POST">
                <h1> Exame! Trouxa </h1>
                Informe sua nota de trouxa: 
                <input type="text" name="notaE"/><br/><br/>
                <input type="submit" value="Enviar"/>
            </form>
            <%}%>
            
    </body>
</html>
