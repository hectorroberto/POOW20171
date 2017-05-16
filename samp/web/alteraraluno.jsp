<%-- 
    Document   : alteraraluno
    Created on : 12/05/2017, 14:26:30
    Author     : DTEC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="controle.AlunoImpl"%>
<%@page import="modelo.Aluno"%>
<jsp:useBean id="alunoDao" class="controle.AlunoImpl"/>

<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SAMP</title>
    </head>
    <body>
        <h1>Alterar Aluno</h1>
        Selecione o aluno que deseja alterar:
        
        <% for(Aluno a : alunoDao.getListAluno()){ %>
            <%=a.getNome()%> 1
        <%}%>
    </body>
</html>
