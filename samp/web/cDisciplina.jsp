<jsp:include page="tema.jsp" />
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row bg-title">
            <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                <h4 class="page-title">Cadastrar disciplina</h4> </div>
            <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                <ol class="breadcrumb">
                    <li><a href="home.jsp">Página inicial</a></li>
                    <li><a href="listarDisciplina.jsp">Listar disciplinas</a></li>
                    <li><a href="cadastrarDisciplina.jsp">Cadastrar disciplina</a></li>
                </ol>
            </div>
        </div>
        <section class="content">
            <div class="panel panel-primary">
                <div class="panel-heading">Cadastrar discplina</div>
                <form method="post" action="#" id="form-processo" role="form">
                    <div class="panel-body">
                        <div class="row">
                            <div class="form-group col-sm-12">
                                <label>Nome da disciplina</label>
                                <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-font"></i></span>
                                    <input type="text"  id="" name="" required="" maxlength="30" class="form-control" placeholder="Nome da discplina"/>
                                </div>
                            </div>
                        </div>
                        <div align="center">
                            <button type="submit" value="btnEnviar" id="btnEnviar" class="btn btn-flat btn-success"> Cadastrar </button>
                            <!--Botão de cadastrar-->
                            <button type="reset" value="limpar" id="limpar" class="btn btn-flat btn-danger"> Limpar </button><!--Botão de cadastrar-->
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