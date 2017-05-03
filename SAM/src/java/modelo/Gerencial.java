/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import dao.GerenteDao;

/**
 *
 * @author Laboratorio
 */
public class Gerencial {
    private int codGerencial;
    private String nomeGerente;
    private int perfilCodPerfil;
    private String usuario;
    private String senha;

    public int getCodGerencial() {
        return codGerencial;
    }

    public void setCodGerencial(int codGerencial) {
        this.codGerencial = codGerencial;
    }

    public String getNomeGerente() {
        return nomeGerente;
    }

    public void setNomeGerente(String nomeGerente) {
        this.nomeGerente = nomeGerente;
    }

    public int getPerfilCodPerfil() {
        return perfilCodPerfil;
    }

    public void setPerfilCodPerfil(int perfilCodPerfil) {
        this.perfilCodPerfil = perfilCodPerfil;
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
    
    
    
    
}
