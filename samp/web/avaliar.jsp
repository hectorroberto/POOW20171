<%-- 
    Document   : avaliar
    Created on : 08/05/2017, 03:08:36
    Author     : Hector Roberto
--%>

<%@page import="java.util.List"%>
<%@page import="modelo.Aluno"%>
<%@page import="controle.AlunoImpl"%>
<%@page import="modelo.Professor"%>
<jsp:useBean id="alunoDao" class="controle.AlunoImpl"/>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Avaliar Professor - SAMP</title>
        <% 
        if(session.getAttribute("aluno") == null){
           response.sendRedirect("loginaluno.jsp");
       }
        // Resgatando o aluno da session
        Aluno aluno = (Aluno) session.getAttribute("aluno");
        // Criando objeto para poder listar os alunos
        %>
    </head>
    <body>
        <h1>Bem vindo, <%=aluno.getNome()%></h1>
        <h1>Avaliar Professor</h1>
        <h2> Selecione um professor: </h2> 
        
        <%for(Professor p: alunoDao.getListProfessor(aluno.getCodAluno())){%>
            <%=p.getNome()%>
            ------
            <%=p.getDisciplina()%>
        <%}%>
        
        
    </body>
</html>
