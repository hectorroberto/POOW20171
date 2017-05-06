
package marcosBrizeno.factorymethod;

/**
 *
 * @author Administrador
 */
public class Gol implements Carro {
    @Override public void exibirInfo() {
        System.out.println("Modelo: Gol\nFabricante: Volksvagen");
    }

    @Override
    public void exibirCor() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}