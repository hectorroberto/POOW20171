<%-- 
    Document   : loginaluno
    Created on : 08/05/2017, 02:10:33
    Author     : Hector Roberto
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Aluno</title>
    </head>
    <body>
        <center><h1>Login do Aluno</h1></center>
        <form action="loginaluno" method="POST">
            <center><input type="text" name="u" placeholder="Username" required="required" /><br/>
            <input type="password" name="p" placeholder="Password" required="required" /><br/><br/>
            <button type="submit">Entrar</button><br/><br/></center>
        </form>
    </body>
</html>
