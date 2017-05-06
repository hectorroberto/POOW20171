
package marcosBrizeno.factorymethod;

/**
 *
 * @author Administrador
 */
public class Fiesta implements Carro {
    @Override public void exibirInfo() {
        System.out.println("Modelo: Fiesta\nFabricante: Ford");
    }

    @Override
    public void exibirCor() {
        System.out.println("Este carro tem a cor x e pertence ao Fiesta.");
    }
}
