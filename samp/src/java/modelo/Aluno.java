
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
    
    Login login;

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
    
    
}
