<%-- 
    Document   : certificadoaluno
    Created on : 19/05/2017, 00:11:27
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
    </body>
</html>
