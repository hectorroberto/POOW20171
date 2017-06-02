<%@page import="modelo.Disciplina"%>
<%@page import="modelo.Curso"%>
<jsp:useBean id="cursoDao" class="controle.CursoImpl"/>
<jsp:useBean id="disciplinaDao" class="controle.DisciplinaImpl"/>


<%int codCurso = Integer.valueOf(request.getParameter("codcurso"));
Curso curso = new Curso();
curso = cursoDao.findByCod(codCurso);
%>

<jsp:include page="tema.jsp" />
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row bg-title">
            <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                <h4 class="page-title">Manipular Disciplinas</h4> </div>
            <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                <ol class="breadcrumb">
                    <li><a href="manipulardisciplina.jsp">Manipular Disciplinas</a></li>
                </ol>
            </div>
        </div>
        <section class="content">
            <a href="cadastrardisciplina.jsp"><i class="btn btn-success">Cadastrar Disciplina</i></a><br><br>
            <div class="panel panel-primary">
                <div class="panel-heading">Disciplinas de <%=curso.getNome()%></div>
                <div class="table-responsive table-bordered table-striped table-condensed">          
                    <table class="table table-responsive  table-condensed">
                        <thead>
                            <tr>
                                <th>Nome</th>
                                <th>Professor</th>
                                <th>Ações</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%for(Disciplina d : disciplinaDao.findByCodCurso(curso.getCodCurso())){%>
                            <tr>
                                <td><%=d.getNome()%></td>
                                <td><%=d.getNomeProfessor()%></td>
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