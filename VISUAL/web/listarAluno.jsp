<jsp:include page="tema.jsp" />
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row bg-title">
            <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                <h4 class="page-title">Listar alunos</h4> </div>
            <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                <ol class="breadcrumb">
                    <li><a href="listarAluno.jsp">Listar alunos</a></li>
                </ol>
            </div>
        </div>
        <section class="content">
            <a href="cadastrarAluno.jsp"><i class="btn btn-success">Cadastrar aluno</i></a><br><br>
            <div class="panel panel-primary">
                <div class="panel-heading">Listar alunos</div>
                <div class="table-responsive table-bordered table-striped table-condensed">          
                    <table class="table table-responsive  table-condensed">
                        <thead>
                            <tr>
                                <th>Nome do aluno </th>
                                <th>Nome do curso</th>
                                <th>Nome da turma</th>
                                <th>Ações</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Ana</td>
                                <td>Fisioterapia</td>
                                <td>2015.2</td>
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