<%-- 
    Document   : aluno
    Created on : 08/05/2017, 00:48:21
    Author     : Hector Roberto
--%>

<%@page import="modelo.Aluno"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Aluno - SAMP</title>
        <% 
        if(session.getAttribute("aluno") == null){
           response.sendRedirect("loginaluno.jsp");
       }
        Aluno aluno = (Aluno) session.getAttribute("aluno");
        %>
    </head>
    <body>
        <h1>Bem vindo, <%=aluno.getNome()%>!</h1>
        <a href="avaliar.jsp"> Avaliar Professor</a>
    </body>
</html>
