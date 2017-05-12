<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <title>SAMP</title>

        <!--Metatags-->
        <meta charset="ISO-8859-1">
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta http-equiv="Content-type" content="text/html; charset=utf-8">
        <meta name="viewport" content="width=device-width,initial-scale=1">
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">

        <!--Favicon da pagina-->
        <link rel="icon" type="image/png" sizes="16x16" href="img/favicon.png">

        <!-- Bootstrap-->
        <link href="dist/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="dist/bootstrap/dist/js/bootstrap.min.js"></script>

        <!--Menu-->
        <link href="plugins/sidebar-nav/dist/sidebar-nav.min.css" rel="stylesheet">
        <script src="plugins/sidebar-nav/dist/sidebar-nav.min.js"></script>

        <!-- Efeitos-->
        <link href="dist/css/animate.css" rel="stylesheet">
        <script src="dist/js/waves.js"></script>

        <!-- Estilo da pagina -->
        <link href="dist/css/style.css" rel="stylesheet">
        <link href="dist/css/default.css" id="theme" rel="stylesheet">
        <script src="dist/js/custom.min.js"></script>

        <!--Jquery-->
        <script src="plugins/jquery/dist/jquery.min.js"></script>

        <!--Slim Srool-->
        <script src="dist/js/jquery.slimscroll.js"></script>
    </head>
    <!--Inicio do body-->
    <body class="fix-header">
        <div id="wrapper">
            <nav class="navbar navbar-default navbar-static-top m-b-0">
                <div class="navbar-header">
                    <div class="top-left-part">
                        <!-- Logo -->
                        <a class="logo" href="index.jsp">
                            <b>
                                <img src="img/admin-logo-dark.png" alt="SAMP" class="light-logo" />
                            </b>
                            <span class="hidden-xs">
                                <!--
                                <img src="img/admin-text-dark.png" alt="SAM" class="light-logo" />
                                -->    
                            </span> 
                        </a>
                    </div>
                    <ul class="nav navbar-top-links navbar-right pull-right">
                        <li>
                            <form role="search" class="app-search hidden-sm hidden-xs m-r-10">
                                <input type="text" placeholder="Pesquisar" class="form-control"> <a href=""><i class="fa fa-search"></i></a> </form>
                        </li>
                        <li>
                            <a class="profile-pic" href="#"> <img src="img/users/genu.jpg" alt="user-img" width="36" class="img-circle"><b class="hidden-xs">SAMP</b></a>
                        </li>
                    </ul>
                </div>
            </nav>
            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav slimscrollsidebar">
                    <div class="sidebar-head">
                        <h3><span class="fa-fw open-close"><i class="ti-close ti-menu"></i></span> <span class="hide-menu">Navigation</span></h3>
                    </div>
                    <ul class="nav" id="side-menu">
                        <li style="padding: 70px 0 0;">
                            <a href="index.jsp" class="waves-effect"><i class="fa fa-clock-o fa-fw" aria-hidden="true"></i>Página inicial</a>
                        </li>
                        <li>
                            <a href="cadastrarDisciplina.jsp" class="waves-effect"><i class="fa fa-user fa-fw" aria-hidden="true"></i>Disciplina</a>
                        </li>
                        <li>
                            <a href="cadastrarAluno.jsp" class="waves-effect"><i class="fa fa-user fa-fw" aria-hidden="true"></i>Aluno</a>
                        </li>
                        <li>
                            <a href="cadastrarGerente.jsp" class="waves-effect"><i class="fa fa-user fa-fw" aria-hidden="true"></i>Gerente</a>
                        </li>
                        <li>
                            <a href="cadastrarCurso.jsp" class="waves-effect"><i class="glyphicon glyphicon-book fa-fw" aria-hidden="true"></i>Curso</a>
                        </li>
                        <li>
                            <a href="#" class="waves-effect"><i class="fa fa-columns fa-fw" aria-hidden="true"></i>Menu 5</a>
                        </li>
                        <li>
                            <a href="#" class="waves-effect"><i class="fa fa-info-circle fa-fw" aria-hidden="true"></i>Menu 6</a>
                        </li>
                    </ul>
                </div>
            </div>

