
package faculdade.oberver;

public class MostrarCondicoesAtuais implements Observer, MostrarDados{
	private float temperatura;
	private float humidade;
	private Subject dados;
	
	public MostrarCondicoesAtuais(Subject dados) {
		this.dados = dados;
		dados.registrarObservador(this);
	}
	
	public void atualizar(float temperatura, float humidade, float pressao) {
		this.temperatura = temperatura;
		this.humidade = humidade;
		mostrar();
	}
	
	public void mostrar() {
		System.out.println("Condicoes atuais: " + temperatura 
			+ "graus e " + humidade + "% humidade");
	}
}
