<%-- 
    Document   : cadastrarcursos
    Created on : 09/05/2017, 15:30:39
    Author     : DTEC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dao.CoordenadorDao"%>
<%@page import="modelo.Coordenador"%>
<jsp:useBean id="coordenadorDao" class="controle.CoordenadorImpl"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="certificadogerente.jsp" %>
    </head>
    <body>
        <h1>Cadastrar Curso</h1>
        <form action="cadastrarcurso" method="POST">
            Informe o nome do curso:
            <input type="text" name="nome" required="required" /><br/>
            Selecione o coordenador:
            <select name="coordenador" required="required">
                <option value="">Escolha</option>
                <%
                    for(Coordenador c : coordenadorDao.getAllCoordenador()){
                %>
                    <option value="<%=c.getCodCoordenador()%>"><%=c.getNome()%></option>
                <%
                    }    
                %>
            </select>
            <input type="submit" value="Adicionar"/>
        </form>
    </body>
</html>
