
package marcosBrizeno.factorymethod;

/**
 *
 * @author Administrador
 */
public class Celta implements Carro {
    @Override public void exibirInfo() {
        System.out.println("Modelo: Celta\nFabricante: Chevrolet");
    }

    @Override
    public void exibirCor() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}