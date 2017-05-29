<%-- 
    Document   : cadastrarcursos
    Created on : 09/05/2017, 15:30:39
    Author     : DTEC
--%>

<%@page import="modelo.Turma"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dao.CoordenadorDao"%>
<%@page import="modelo.Coordenador"%>
<jsp:useBean id="coordenadorDao" class="controle.CoordenadorImpl"/>
<jsp:useBean id="turmaDao" class="controle.TurmaImpl"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="certificadoUsuario.jsp" %>
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
            Selecione a turma:
            <select name="turma" required="required">
                <option value="">Escolha</option>
                <%
                    for(Turma t : turmaDao.getAllTurma()){
                %>
                    <option value="<%=t.getCodTurma()%>"><%=t.getDescricao()%></option>
                <%
                    }    
                %>
            </select>
            <input type="submit" value="Adicionar"/>
        </form>
    </body>
</html>
