<jsp:include page="tema.jsp" />
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row bg-title">
            <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                <h4 class="page-title">Avaliações pendentes</h4> </div>
            <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                <ol class="breadcrumb">
                    <li><a href="avaliacoesPendentes.jsp">Avaliações pendentes</a></li>
                </ol>
            </div>
        </div>
        <div class="row">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <div class="text-center">Pesquisar </div> 
                </div>
                <div class="panel-body">
                    <div class="form-group">
                        <div class="col-sm-6">
                            <label>Curso</label>
                            <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-align-justify"></i></span>
                                <select required=""  class="form-control">
                                    <option value="0">Selecione uma opção</option>
                                    <option value="1">Radiologia</option>
                                    <option value="1">Farmácia</option>
                                    <option value="1">Sistemas de Informação</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <label>Turma</label>
                            <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-align-justify"></i></span>
                                <select  class="form-control">
                                    <option value="0">Selecione uma opção</option>
                                    <option value="1">RAD 2015.1</option>
                                    <option value="1">SI 2017.1</option>
                                    <option value="1">FAR 2017.1</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <section class="content">
                <div class="panel panel-primary">
                    <div class="panel-heading text-center">Alunos</div>
                    <div class="table-responsive table-bordered table-striped table-condensed">          
                        <table class="table table-responsive  table-condensed">
                            <thead>
                                <tr>
                                    <th>Nome do aluno </th>
                                    <th>Pendência</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Ana</td>
                                    <td>Sim</td>
                                </tr>
                                <tr>
                                    <td>Luis</td>
                                    <td>Não</td>
                                </tr>
                                <tr>
                                    <td>Carla</td>
                                    <td>Sim</td>
                                </tr>
                                <tr>
                                    <td>Bruno</td>
                                    <td>Sim</td>
                                </tr>
                                <tr>
                                    <td>Bruna</td>
                                    <td>Não</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </section>
        </div>
    </div>
</div>
</body>
</html>