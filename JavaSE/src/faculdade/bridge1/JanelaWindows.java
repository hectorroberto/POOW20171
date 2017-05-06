
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package faculdade.bridge1;

/**
 *
 * @author Administrador
 */
public class JanelaWindows implements JanelaImplementada{
    @Override
    public void desenharJanela(String titulo) {
        System.out.println(titulo + " - Janela Windows");
    }
 
    @Override
    public void desenharBotao(String titulo) {
        System.out.println(titulo + " - Botão Windows");
    }
}
