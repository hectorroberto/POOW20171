<%-- 
    Document   : logingerente
    Created on : 07/05/2017, 23:53:40
    Author     : Hector Roberto
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login - SAMP</title>
    </head>
    <body>
        <center><h1>Login Gerente</h1></center>
        <form action="logingerente" method="post">
            <center><input type="text" name="u" placeholder="Username" required="required" /><br/>
            <input type="password" name="p" placeholder="Password" required="required" /><br/><br/>
            <button type="submit">Entrar</button><br/><br/></center>
        </form>
    </body>
</html>
