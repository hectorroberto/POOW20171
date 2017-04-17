package marcosBrizeno.abstractFactory1;

public class Cliente {
	public static void main(String[] args) {
		FabricaDeCarro fabrica = new FabricaFiat();
		CarroSedan sedan = fabrica.criarCarroSedan();
		CarroPopular popular = fabrica.criarCarroPopular();
                
		sedan.exibirInfoSedan();
		popular.exibirInfoPopular();

	}
}
