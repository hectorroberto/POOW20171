<%-- 
    Document   : cadastrardisciplina
    Created on : 11/05/2017, 20:42:52
    Author     : Laboratorio
--%>

<%@page import="modelo.Professor"%>
<jsp:useBean id="professorDao" class="controle.ProfessorImpl"/>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Packges needs for select of curso-->
<jsp:useBean id="cursoDao" class="controle.CursoImpl"/>
<%@page import="modelo.Curso"%>

<%@page import="modelo.Coordenador"%>
<jsp:useBean id="coordenadorDao" class="controle.CoordenadorImpl"/>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SAMP</title>
    </head>
    <body>
        <h1>Cadastrar Disciplina</h1>
        <form action="cadastrardisciplina" method="POST">
            Informe o nome da Disciplina:
            <input type="text" name="nome" required="required" /><br/>
            
            Selecione o professor:
            <select name="codProfessor" required="required">
                <option value="">Escolha</option>
                <%
                    for(Professor p : professorDao.getAllProfessor()){
                %>
                    <option value="<%=p.getCodProfessor()%>"><%=p.getNome()%></option>
                <%
                    }    
                %>
            </select>
            
            Selecione o curso:
            <select name="codCurso" required="required">
                <option value="">Escolha</option>
                <%
                    for(Curso c : cursoDao.getAllCurso()){
                %>
                    <option value="<%=c.getCodCurso()%>"><%=c.getNome()%></option>
                <%
                    }    
                %>
            </select>
            <br/>
            Selecione o coordenador:
            <select name="codCoordenador" required="required">
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
