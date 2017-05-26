
package modelo;

import controle.Login;

/**
 *
 * @author Hector Roberto
 */
public class Usuario{
    private int codUsuario;
    private String nome;
    private String usuario;
    private String senha;
    private int codPerfil;
    
    Login login;
    
    public Usuario(){
        login = new Login();
    }

    public int getCodUsuario() {
        return codUsuario;
    }

    public void setCodUsuario(int codUsuario) {
        this.codUsuario = codUsuario;
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

    public int getCodPerfil() {
        return codPerfil;
    }

    public void setCodPerfil(int codPerfil) {
        this.codPerfil = codPerfil;
    }
    
    public Usuario logarUsuario(String u, String p){
        return (login.logarUsuario(u, p));
    }
}
