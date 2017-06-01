<%@page import="modelo.Coordenador"%>
<jsp:useBean id="coordenadorDao" class="controle.CoordenadorImpl"/>
<jsp:include page="tema.jsp"/>
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row bg-title">
            <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                <h4 class="page-title">Cadastrar Curso</h4> </div>
            <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                <ol class="breadcrumb">
                    <li><a href="home.jsp">Página inicial</a></li>
                    <li><a href="listarAluno.jsp">Listar alunos</a></li>
                    <li><a href="cadastrarAluno.jsp">Cadastrar Curso</a></li>
                </ol>
            </div>
        </div>
        <section class="content">
            <div class="panel panel-primary">
                <div class="panel-heading">Cadastrar Curso</div>
                <form method="post" action="cadastrarcurso" id="form-processo" role="form">
                    <div class="panel-body">
                        <div class="row">
                            <div class="form-group col-sm-12">
                                <label>Curso</label>
                                <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-font"></i></span>
                                    <input type="text"  id="" name="nome" required="" maxlength="100" class="form-control" placeholder="Nome do Curso"/>
                                </div>
                            </div>
                            <div class="form-group col-sm-6">
                                <label>Coordenador</label>
                                <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-align-justify"></i></span>
                                    <select name="coordenador" required="" class="form-control">
                                        <option value="0">Selecione um coordenador</option>
                                            <%
                                                for(Coordenador c : coordenadorDao.getAllCoordenador()){
                                            %>
                                                <option value="<%=c.getCodCoordenador()%>"><%=c.getNome()%></option>
                                            <%
                                                }    
                                            %>
                                    </select>
                                </div>
                                    <br/><br/>
                                <div align="center">
                                <button type="submit" value="btnEnviar" id="btnEnviar" class="btn btn-flat btn-success"> Cadastrar </button>
                                <!--Botão de cadastrar-->
                                <button type="reset" value="limpar" id="limpar" class="btn btn-flat btn-danger"> Limpar </button><!--Botão de cadastrar-->
                            </div>
                                    
                            </div>

                                    
                                    
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
