<%-- 
    Document   : operacaosucesso
    Created on : 11/05/2017, 20:14:57
    Author     : Laboratorio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SAMP</title>
        
    </head>
    <body>
    <center>
        <h1>Operação bem sucedida!</h1>
        <% 
        if((session.getAttribute("aluno"))!= null){
           %>
           <h2> <a href="aluno.jsp"> Retornar ao menu inicial</a></h2>
            <%
                       
       } else if ((session.getAttribute("Usuario"))!= null){
            %>
           <h2> <a href="Usuario.jsp"> Retornar ao menu inicial</a></h2>
            <%
            
        } else{
            response.sendRedirect("index.html");

       }
        %>
    </center>
    </body>
</html>
