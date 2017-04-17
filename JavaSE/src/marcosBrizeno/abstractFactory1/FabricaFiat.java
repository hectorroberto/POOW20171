package marcosBrizeno.abstractFactory1;

public class FabricaFiat implements FabricaDeCarro {

	@Override
	public CarroSedan criarCarroSedan() {
		return new Siena();
	}

	@Override
	public CarroPopular criarCarroPopular() {
		return new Palio();
	}

}
