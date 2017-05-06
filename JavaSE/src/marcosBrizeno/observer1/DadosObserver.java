package marcosBrizeno.observer1;

public abstract class DadosObserver {

	protected DadosSubject dados;

	public DadosObserver(DadosSubject dados) {
		this.dados = dados;
	}

	public abstract void update();
}