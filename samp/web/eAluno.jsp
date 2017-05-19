<jsp:include page="tema.jsp"/>
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row bg-title">
            <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                <h4 class="page-title">Editar aluno</h4> </div>
            <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                <ol class="breadcrumb">
                    <li><a href="home.jsp">Página inicial</a></li>
                    <li><a href="listarAluno.jsp">Listar alunos</a></li>
                    <li><a href="eAluno.jsp">Editar aluno</a></li>
                </ol>
            </div>
        </div>
        <section class="content">
            <div class="panel panel-primary">
                <div class="panel-heading">Editar aluno</div>
                <form method="post" action="#" id="form-processo" role="form">
                    <div class="panel-body">
                        <div class="row">
                            <div class="form-group col-sm-12">
                                <label>Nome do Aluno</label>
                                <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-font"></i></span>
                                    <input type="text"  id="" name="" required="" maxlength="100" class="form-control" placeholder="Nome do Aluno"/>
                                </div>
                            </div>
                            <div class="form-group col-sm-6">
                                <label>Curso</label>
                                <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-align-justify"></i></span>
                                    <select required="" class="form-control">
                                        <option value="0">Selecione uma curso</option>
                                    </select>
                                </div>
                            </div>
                            <div>
                                <label>Nome da Turma</label>
                                <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-font"></i></span>
                                    <input type="text"  id="" name="" required="" maxlength="30" class="form-control" placeholder="Nome da Turma"/>
                                </div>
                            </div><br>
                        </div>
                        <div align="center">
                            <button type="submit" class="btn btn-flat btn-success"> Atualizar </button>
                            <button type="reset" class="btn btn-flat btn-danger"> Limpar </button>
                        </div>
                    </div>
                </form>
            </div>
        </section>
    </div>
</div>
</div>
</body>
</html>
