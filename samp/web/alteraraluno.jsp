<%-- 
    Document   : alteraraluno
    Created on : 12/05/2017, 14:26:30
    Author     : DTEC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="modelo.Aluno"%>
<%@page import="controle.AlunoImpl"%>

<%@page import="java.util.List"%>
<jsp:useBean id="alunoDao" class="controle.AlunoImpl"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SAMP</title>
        <%AlunoImpl listar = new AlunoImpl();%>
    </head>
    <body>
        <h1>Alterar Aluno</h1>
        Selecione o aluno que deseja alterar:
        
        <% for(Aluno a : listar.getListAluno()){ %>
            <%=a.getNome()%> 1
        <%}%>
    </body>
</html>
