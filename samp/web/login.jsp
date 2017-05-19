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
        <title>Tela de Login</title>

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
                            <h1 style="font-family:Comic Sans MS" align="center">LOGIN - SAM</h1><br>
                        </div>
                        <form method="POST" name="login" id="idlogin" action="#">
                            <div style="font-family:Verdana "class="form-group">
                                <label for="usuario">Usuário</label>
                                <input type= "text" required="" class="form-control" id="idusuario" placeholder="Digite seu Usuário">
                            </div>
                            <div style="font-family:Verdana" class="form-group">
                                <label for="senha">Senha</label>
                                <input type="password" required="" class="form-control" id="idsenha" placeholder="Digite sua Senha:">
                            </div>
                            <a href="index.jsp"><i class="btn btn-success btn-block">Entrar</i></a>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
