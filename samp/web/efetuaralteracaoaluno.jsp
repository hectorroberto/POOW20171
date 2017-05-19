<%-- 
    Document   : efetuaralteracaoaluno
    Created on : 14/05/2017, 01:38:10
    Author     : Hector Roberto
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alteração de Aluno - SAMP</title>
        <%String cod = request.getParameter("cod");%>
    </head>
    <body>
        <%response.sendRedirect("alteraraluno?cod="+cod);%>
    </body>
</html>
