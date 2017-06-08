<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" type="image/png" sizes="16x16" href="#">
        <title>SAM</title>
        <!-- Bootstrap Core CSS -->
        <link href="dist/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Menu CSS -->
        <link href="plugins/sidebar-nav/dist/sidebar-nav.min.css" rel="stylesheet">
        <!-- animation CSS -->
        <link href="dist/css/animate.css" rel="stylesheet">
        <!-- Custom CSS -->
        <link href="dist/css/style.css" rel="stylesheet">
        <!-- color CSS -->
        <link href="dist/css/default.css" id="theme" rel="stylesheet">
        <!-- JQUERY -->
        <script src="plugins/jquery/dist/jquery.min.js"></script>
        <!-- Bootstrap Core JavaScript -->
        <script src="dist/bootstrap/dist/js/bootstrap.min.js"></script>
        <!-- Menu Plugin JavaScript -->
        <script src="plugins/sidebar-nav/dist/sidebar-nav.min.js"></script>
        <!--slimscroll JavaScript -->
        <script src="dist/js/jquery.slimscroll.js"></script>
        <!--Wave Effects -->
        <script src="dist/js/waves.js"></script>
        <!-- Custom Theme JavaScript -->
        <script src="dist/js/custom.min.js"></script>
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
                            <a href="listarAluno.jsp" class="waves-effect"><i class="fa fa-user fa-fw" aria-hidden="true"></i>Aluno</a>
                        </li>
                        <li>
                            <a href="listarCurso.jsp" class="waves-effect"><i class="glyphicon glyphicon-book fa-fw" aria-hidden="true"></i>Curso</a>
                        </li>
                        <li>
                            <a href="listarDisciplina.jsp" class="waves-effect"><i class="fa fa-user fa-fw" aria-hidden="true"></i>Disciplina</a>
                        </li>
                        <li>
                            <a href="listarGerente.jsp" class="waves-effect"><i class="fa fa-user fa-fw" aria-hidden="true"></i>Gerente</a>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-list-alt fa-fw" aria-hidden="true"></i><span>Avaliações</span>
                                <span class="pull-right-container">
                                    <i class="fa fa-angle-down pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">
                                <li>
                                    <a href="avaliarCoordenador.jsp">Avaliar coordenador </a>
                                </li>
                                <li>
                                    <a href="avaliarProfessor.jsp"> Avaliar professor </a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="login.jsp" class="waves-effect"><i class="fa fa-info-circle fa-fw" aria-hidden="true"></i>Sair</a>
                        </li>
                    </ul>
                </div>
            </div>

