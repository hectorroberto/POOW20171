<%@page import="modelo.Curso"%>
<jsp:useBean id="cursoDao" class="controle.CursoImpl"/>

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
                <div class="panel-heading">Selecione o Curso que deseja ver as Disciplinas</div>
                <div class="table-responsive table-bordered table-striped table-condensed">          
                    <table class="table table-responsive  table-condensed">
                        <thead>
                            <tr>
                                <th>Curso</th>
                                <th>Coordenador</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%for(Curso c : cursoDao.getAllCurso()){%>
                            <tr>
                                <td> <a href="listardisciplinas.jsp?codcurso=<%=c.getCodCurso()%>"> <%=c.getNome()%></td>
                                <td><%=c.getNomeCoordenador()%></td>
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