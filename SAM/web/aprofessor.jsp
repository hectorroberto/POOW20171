<%-- 
    Document   : aprofessor
    Created on : 04/05/2017, 14:09:55
    Author     : DTEC
--%>

<%@page import="controle.AlunoImpl"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Professor"%>
<%@page import="modelo.Aluno"%>
<%@page import="controle.PreencherModelo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Avaliar Professor</title>
    </head>
    <%
        int cod = Integer.valueOf(request.getParameter("cod"));
        Aluno aluno = new Aluno();
        AlunoImpl help = new AlunoImpl();
        PreencherModelo busca = new PreencherModelo();
                aluno = busca.popular(cod, aluno);
    %>
    <body>
        <h1>Aluno: <%=aluno.getNome()%></h1>
        
        <%
        Professor professor = new Professor();
        List<Professor> listProfessores = help.getListProfessor(aluno.getId());
                   
                    for(Professor p : listProfessores){
                        %>
                        <h3><br/> Professor
                            <%=p.getNomeProfessor()%>
                        </h3>
                        <%
                    }
        %>
    </body>
</html>
