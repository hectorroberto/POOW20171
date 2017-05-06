
package marcosBrizeno.factorymethod;

public class FabricaVolts implements FabricaDeCarro {
 
    @Override
    public Carro criarCarro() {
        return new Gol();
    }
 
}
