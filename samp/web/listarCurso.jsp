<jsp:include page="tema.jsp" />
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row bg-title">
            <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                <h4 class="page-title">Listar Cursos</h4> </div>
            <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                <ol class="breadcrumb">
                    <li><a href="index.jsp">Página inicial</a></li>
                    <li><a href="listarCurso.jsp">Listar cursos</a></li>
                </ol>
            </div>
        </div>
        <section class="content">
            <a href="cCurso.jsp"><i class="btn btn-success">Cadastrar curso</i></a><br><br>
            <div class="panel panel-primary">
                <div class="panel-heading">Lista de cursos</div>
                <div class="table-responsive table-bordered table-striped table-condensed">          
                    <table class="table table-responsive  table-condensed">
                        <thead>
                            <tr>
                                <th align="center">Nome do curso</th>
                                <th align="center">Ações</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Fisioterapia</td>
                                <td> 
                                    <a href="eCurso.jsp"><i class=" btn btn-success glyphicon glyphicon-edit"></i></a>
                                    <a href="#"><i class=" btn btn-danger glyphicon glyphicon-remove"></i></a>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </section>
    </div>
</div>
</body>
</html>