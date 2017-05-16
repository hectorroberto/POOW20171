<jsp:include page="tema.jsp" />
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row bg-title">
            <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                <h4 class="page-title">Listar gerentes</h4> </div>
            <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                <ol class="breadcrumb">
                    <li><a href="listarGerente.jsp">Listar gerentes</a></li>
                </ol>
            </div>
        </div>
        <section class="content">
            <a href="cadastrarGerente.jsp"><i class="btn btn-success">Cadastrar gerente</i></a><br><br>
            <div class="panel panel-primary">
                <div class="panel-heading">Lista de gerentes</div>
                <div class="table-responsive table-bordered table-striped table-condensed">          
                    <table class="table table-responsive  table-condensed">
                        <thead>
                            <tr>
                                <th>Nome</th>
                                <th>Perfil</th>
                                <th>Ações</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Brunna</td>
                                <td>Administradora</td>
                                <td> 
                                    <a href="#"><i class=" btn btn-success glyphicon glyphicon-edit"></i></a>
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