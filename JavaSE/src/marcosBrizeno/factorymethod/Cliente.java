
package marcosBrizeno.factorymethod;

/**
 *
 * @author Administrador
 */
public class Cliente {
    public static void main(String[] args) {
       
        FabricaDeCarro f = new FabricaFiat();
        Carro a = f.criarCarro();
        a.exibirInfo();
        
        
    }
}
