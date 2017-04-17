
package marcosBrizeno.factorymethod;

/**
 *
 * @author Administrador
 */
public class Palio implements Carro {
    
    @Override public void exibirInfo() {
        System.out.println("Modelo: Palio\nFabricante: Fiat");
    }
    
    public void exibirCor(){
        System.out.println("Este Palio é de cor verde.");
    }
}