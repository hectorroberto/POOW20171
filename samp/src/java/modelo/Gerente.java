
package modelo;

import controle.Login;

/**
 *
 * @author Hector Roberto
 */
public class Gerente{
    private int codGerente;
    private String nome;
    private String usuario;
    private String senha;
    private int codPerfil;
    
    Login login;
    
    public Gerente(){
        login = new Login();
    }

    public int getCodGerente() {
        return codGerente;
    }

    public void setCodGerente(int codGerente) {
        this.codGerente = codGerente;
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
    
    public Gerente logarGerente(String u, String p){
        return (login.logarGerente(u, p));
    }
}
