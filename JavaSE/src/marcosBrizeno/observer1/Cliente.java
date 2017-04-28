package marcosBrizeno.observer1;

public class Cliente {
	public static void main(String[] args) {
		DadosSubject dados = new DadosSubject();
		dados.attach(new TabelaObserver(dados));
		dados.attach(new BarraObserver(dados));
		dados.attach(new PorcentoObserver(dados));

		dados.setState(new Dados(10, 3, 1));
		dados.setState(new Dados(2, 30, 100));
	}
}
