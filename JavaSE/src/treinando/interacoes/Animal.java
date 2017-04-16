/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package treinando.interacoes;

/**
 *
 * @author Administrador
 */
public abstract class Animal {
    private String nome;
    
    public void latir(){};

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
    
}
