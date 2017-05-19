<%-- 
    Document   : certificadoprofessor
    Created on : 19/05/2017, 00:13:18
    Author     : Hector Roberto
--%>
<%@page import="modelo.Gerente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gerente - SAMP</title>
        <% 
            if(session.getAttribute("gerente") == null){
               response.sendRedirect("logingerente.jsp");
           }
            Gerente gerente = (Gerente) session.getAttribute("gerente");
        %>
    <body>
    </body>
</html>
