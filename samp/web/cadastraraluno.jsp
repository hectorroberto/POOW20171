<%-- 
    Document   : cadastraraluno
    Created on : 08/05/2017, 15:04:59
    Author     : DTEC
--%>

<%@page import="dao.CursoDao"%>
<%@page import="modelo.Curso"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="cursoDao" class="controle.CursoImpl"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SAMP</title>
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
            <input type="submit" value="Adicionar"/>
        </form>
    </body>
</html>
