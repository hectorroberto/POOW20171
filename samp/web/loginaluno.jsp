<%-- 
    Document   : loginaluno
    Created on : 08/05/2017, 02:10:33
    Author     : Hector Roberto
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--
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
-->
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <!--Metatags-->
        <meta charset="ISO-8859-1">
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta http-equiv="Content-type" content="text/html; charset=utf-8">
        <meta name="viewport" content="width=device-width,initial-scale=1">
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <title>Login Aluno - SAMP</title>

        <!-- Bootstrap -->
        <link rel="stylesheet" href="dist/bootstrap/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="dist/bootstrap/dist/css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="dist/bootstrap/dist/js/bootstrap.min.js">
        <script src="dist/bootstrap/dist/js/bootstrap.min.js"></script>
            
        <!--Jquery-->
        <script src="plugins/jquery/dist/jquery.min.js"></script>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-4"></div>
                    <div class="col-sm-4">
                        <div class="page-header">
                            <h1 style="font-family:Comic Sans MS" align="center">LOGIN ALUNO</h1><br>
                        </div>
                        <form  action="loginaluno" method="POST">
                            <div style="font-family:Verdana "class="form-group">
                                <label for="usuario">Usuário</label>
                                <input type= "text" required="" class="form-control" name="u" placeholder="Digite seu Usuário">
                                <label for="senha">Senha</label>
                                <input type="password" required="" class="form-control" name="p" placeholder="Digite sua Senha:">
                            </div>
                            <button type="submit" class="btn btn-success btn-block">Entrar</button><br/>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
