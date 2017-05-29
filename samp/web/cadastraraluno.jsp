<%-- 
    Document   : cadastraraluno
    Created on : 08/05/2017, 15:04:59
    Author     : DTEC
--%>

<%@page import="dao.CursoDao"%>
<%@page import="dao.TurmaDao"%>
<%@page import="modelo.Curso"%>
<%@page import="modelo.Turma"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="cursoDao" class="controle.CursoImpl"/>
<jsp:useBean id="turmaDao" class="controle.TurmaImpl"/>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SAMP</title>
        <%@include file="certificadoUsuario.jsp" %>
    </head>
    <body>
        <h1>Cadastrar Aluno</h1>
        <form action="cadastraraluno" method="POST">
            Informe o nome do aluno:
            <input type="text" name="nome" required="required" /><br/>
            Selecione o curso:
            <select name="curso" required="required">
                <option value="">Escolha</option>
                <%
                    for(Curso c : cursoDao.getAllCurso()){
                %>
                    <option value="<%=c.getCodCurso()%>"><%=c.getNome()%></option>
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
