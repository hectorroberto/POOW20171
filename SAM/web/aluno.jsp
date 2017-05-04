<%-- 
    Document   : aluno
    Created on : 01/05/2017, 04:44:11
    Author     : Hector Roberto
--%>
<%@page import="controle.AlunoImpl"%>
<%@page import="modelo.Aluno" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Aluno - SAM</title>
    </head>
    <% 
     String usuario = request.getParameter("u");
     String senha = request.getParameter("p");
     
     Aluno aluno = new Aluno();
     AlunoImpl login = new AlunoImpl();
     aluno = login.logar(usuario, senha);
   
     
     if(aluno.getNome() == null){
        response.sendRedirect("index.html");
    }
    %>
    <body>
        <h2>Bem-vindo, <%=aluno.getNome()%>.</h2>
        <center>
        <a href="aprofessor.jsp?cod="<%=aluno.getId()%>> <img src="pic\aluno\av-prof.png" alt="Avaliar Professor" width="150"/></a>
        <a href="construcao.jsp"> <img src="pic\aluno\av-coord.png" alt="Avaliar Coordenador" width="150" /></a>
        <a href="construcao.jsp"> <img src="pic\aluno\rev-av.png" alt="Rever Avaliações" width="150" /></a>
        </center>
    </body>
</html>
