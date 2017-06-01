<%@page import="modelo.Curso"%>
<jsp:useBean id="cursoDao" class="controle.CursoImpl"/>

<jsp:include page="tema.jsp" />
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row bg-title">
            <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                <h4 class="page-title">Manipular Cursos</h4> </div>
            <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                <ol class="breadcrumb">
                    <li><a href="manipularcurso.jsp">Manipular Cursos</a></li>
                </ol>
            </div>
        </div>
        <section class="content">
            <a href="cadastrarcurso.jsp"><i class="btn btn-success">Cadastrar Curso</i></a><br><br>
            <div class="panel panel-primary">
                <div class="panel-heading">Lista de Cursos</div>
                <div class="table-responsive table-bordered table-striped table-condensed">          
                    <table class="table table-responsive  table-condensed">
                        <thead>
                            <tr>
                                <th>Nome</th>
                                <th>Coordenador</th>
                                <th>Ações</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%for(Curso c : cursoDao.getAllCurso()){%>
                            <tr>
                                <td><%=c.getNome()%></td>
                                <td><%=c.getNomeCoordenador()%></td>
                                <td> 
                                    <a href="eUsuario.jsp"><i class=" btn btn-success glyphicon glyphicon-edit"></i></a>
                                    <a href="#"><i class=" btn btn-danger glyphicon glyphicon-remove"></i></a>
                                </td>
                            </tr>
                            <%}%>
                        </tbody>
                    </table>
                </div>
            </div>
        </section>
    </div>
</div>
</body>
</html>