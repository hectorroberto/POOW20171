
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Bridge;

/**
 *
 * @author Administrador
 */
public class Teste {
    
    public static void main(String[] args) {
	    JanelaAbstrata janela = new JanelaDialogo(new JanelaWindows());
	    janela.desenhar();
	    janela = new JanelaAviso(new JanelaWindows());
	    janela.desenhar();
	 
	    janela = new JanelaDialogo(new JanelaWindows());
	    janela.desenhar();
	}
}
