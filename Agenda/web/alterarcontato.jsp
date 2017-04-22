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
                <%
                    int id = 0;
                    Contato contato = new Contato();
                    if (request.getParameter("id") != null) {
                        id = Integer.valueOf(request.getParameter("id"));
                        contato = new ContatoImpl().findById(id);
                    }
                %>

                Nome: <input type="text" name="nome" value="<%=contato.getNome()%>"/><br>
                Telefone:<input type="text" name="telefone" value="<%=contato.getTelefone()%>"/><br>
                Cidade:
                <select name="cidade">
                    <%
                        if (id != 0) {
                    %>
                    <option value="<%=contato.getCidade().getId()%>"><%=contato.getCidade().getNome()%></option>
                    <%
                        }

                        for (Cidade c : cidadeDao.getListAll()) {
                    %>
                    <option value="<%=c.getId()%>"><%=c.getNome()%></option>
                    <%
                        }
                    %>
                </select>
                <input type="hidden" name="id" value="<%=id%>"/>
                <input type="submit" value="Alterar"/>
                <a href="listar.jsp">Cancelar</a>
                <a href="index.html">Inicio</a>
            </form>
        </div>
    </body>
</html>
