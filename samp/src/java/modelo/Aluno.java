
package modelo;

import controle.Login;

/**
 *
 * @author Hector Roberto
 */
public class Aluno{
    private int codAluno;
    private String nome;
    private String usuario;
    private String senha;
    private int codCurso;
    private Disciplina disciplina;
    
    private Login login;
    private Turma turma;

    public Aluno(){
        login = new Login();
    }
    
    public int getCodAluno() {
        return codAluno;
    }

    public void setCodAluno(int codAluno) {
        this.codAluno = codAluno;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public int getCodCurso() {
        return codCurso;
    }

    public void setCodCurso(int codCurso) {
        this.codCurso = codCurso;
    }
    
    public Aluno logarAluno(String u, String p){
        return (login.logarAluno(u,p));
    }

    public int getCodDisciplina() {
        return disciplina.getCodDisciplina();
    }
    
    public void setCodDisciplina(int codDisciplina) {
        this.disciplina.setCodDisciplina(codDisciplina);
    }

    public String getNomeDisciplina() {
        return disciplina.getNome();
    }
    
    public void setNomeDisciplina(String nomeDisciplina) {
        this.disciplina.setNome(nomeDisciplina);
    }
    
     public int getCodTurma() {
        return turma.getCodTurma();
    }
    
    public void setCodTurma(int codTurma) {
        this.turma.setCodTurma(codTurma);
    }

    public String getNomeTurma() {
        return turma.getDescricao();
    }

    public void setNomeTurma(String nomeTurma) {
        this.turma.setDescricao(nomeTurma);
    }
}
