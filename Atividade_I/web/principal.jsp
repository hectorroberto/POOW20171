<%-- 
    Document   : principal
    Created on : 23/02/2017, 23:35:06
    Author     : Laboratorio
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%-- Declaração      --%>
        <%
            int contaVisitantes = 0;
            
        %>
        <%-- ScriptLet --%>
        <%
            out.println("Mais um codigo Java");
            out.println("Visitante:"+(++contaVisitantes));
            
        %>
        <%--EXPRESSION --%>
        <br>
            Data: <%= (new Date()).toInstant()%>
            
       
        
    </body>
</html>
