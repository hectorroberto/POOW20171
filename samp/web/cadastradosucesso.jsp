  <%-- 
    Document   : cadastradosucesso
    Created on : 08/05/2017, 18:26:42
    Author     : DTEC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SAMP</title>
        <%
            String usuario = request.getParameter("login");
            String senha = request.getParameter("senha");
        %>

    </head>
    <body>
        <h1>Cadastrado com sucesso!</h1>
        
        <h2>
            Login do Aluno: <%=usuario%> <br/>
            Senha do ALuno: <%=senha%> <br/>
        </h2>
        
        <a href="cadastraraluno.jsp"> Cadastrar novo aluno</a>
        <a href="Usuario.jsp"> Voltar ao menu inicial</a>
        
    </body>
</html>
