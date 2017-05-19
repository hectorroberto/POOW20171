<jsp:include page="tema.jsp" />
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row bg-title">
            <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                <h4 class="page-title">Listar disciplinas</h4> </div>
            <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                <ol class="breadcrumb">
                    <li><a href="index.jsp">Página inicial</a></li>
                    <li><a href="listarDisciplina.jsp">Listar disciplinas</a></li>
                </ol>
            </div>
        </div>
        <section class="content">
            <a href="cDisciplina.jsp"><i class="btn btn-success">Cadastrar disciplina</i></a><br><br>
            <div class="panel panel-primary">
                <div class="panel-heading">Lista disciplinas</div>
                <div class="table-responsive table-bordered table-striped table-condensed">          
                    <table class="table table-responsive  table-condensed">
                        <thead>
                            <tr>
                                <th align="center">Nome do disciplina</th>
                                <th align="center">Ações</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Morfologia II</td>
                                <td> 
                                    <a href="eDisciplina.jsp"><i class=" btn btn-success glyphicon glyphicon-edit"></i></a>
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