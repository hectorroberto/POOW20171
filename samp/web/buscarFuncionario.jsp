<jsp:include page="tema.jsp" />
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row bg-title">
            <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                <h4 class="page-title">Buscar funcionário</h4> </div>
            <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                <ol class="breadcrumb">
                    <li><a href="index.jsp">Página inicial</a></li>
                    <li><a href="buscarFuncionario.jsp">Buscar funcionario</a></li>
                </ol>
            </div>
        </div>
        <div class="panel panel-primary">
            <div class="panel-heading text-center">Listar de funcionários</div>
            <div class="table-responsive table-bordered table-striped table-condensed">          
                <table class="table table-responsive  table-condensed">
                    <thead>
                        <tr>
                            <th class="text-center">Nome do funcionário </th>
                            <th clssss='text-center'>Ações</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class='text-center'>Fernanda</td>
                            <td> 
                                <a href="#"><i class=" btn btn-success glyphicon glyphicon-edit" title='Editar funcionário'></i></a>
                                <a href="#"><i class=" btn btn-danger glyphicon glyphicon-remove" title='Exluir     funcionário'></i></a>
                                <a href="#"><i class=" btn btn-info glyphicon glyphicon-list" title='Detalhe funcionário'></i></a>
                            </td>
                        </tr>
                        <tr>
                            <td class='text-center'>Josana</td>
                            <td> 
                                <a href="#"><i class=" btn btn-success glyphicon glyphicon-edit" title='Editar funcionário'></i></a>
                                <a href="#"><i class=" btn btn-danger glyphicon glyphicon-remove" title='Exluir     funcionário'></i></a>
                                <a href="#"><i class=" btn btn-info glyphicon glyphicon-list" title='Detalhe funcionário'></i></a>
                            </td>
                        </tr>
                        <tr>
                            <td class='text-center'>Maicon</td>
                            <td> 
                                <a href="#"><i class=" btn btn-success glyphicon glyphicon-edit" title='Editar funcionário'></i></a>
                                <a href="#"><i class=" btn btn-danger glyphicon glyphicon-remove" title='Exluir     funcionário'></i></a>
                                <a href="#"><i class=" btn btn-info glyphicon glyphicon-list" title='Detalhe funcionário'></i></a>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
</body>
</html>