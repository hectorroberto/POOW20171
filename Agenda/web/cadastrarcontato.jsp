<%-- 
    Document   : cadastrar
    Created on : 28/04/2016, 21:11:56
    Author     : Maicon
--%>

<%@page import="controle.ContatoImpl"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@page import="modelo.Cidade" %>
<%@page import="modelo.Contato" %>
<jsp:useBean id="cidadeDao" class="controle.CidadeImpl"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Cadastro de contato</title>
    </head>
    <body>
        <%@include file="index.html" %>
        <h1>Cadastro de contato</h1>
        <div>
            <form action="cadastrarContato" method="post">
                Nome: <input type="text" name="nome" /><br>
                Telefone:<input type="text" name="telefone"/><br>
                Cidade:
                <select name="cidade">
                    <option value="">Escolha</option>
                <%
                for(Cidade c : cidadeDao.getListAll()){
                %>
                    <option value="<%=c.getId()%>"><%=c.getNome()%></option>
                <%
                }    
                %>
                </select>
                <input type="submit" value="Adicionar"/>
                <a href="listar.jsp">Cancelar</a>
            </form>
        </div>
    </body>
</html>
