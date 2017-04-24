
package faculdade.oberver;

import java.util.*;

public class MostrarPrevisao implements  Observer, MostrarDados{
	private float pressaoAtual = 29.92f;  
	private float pressaoAnterior;
	private Subject dados;

	public MostrarPrevisao(Subject dados) {
		this.dados = dados;
		dados.registrarObservador(this);
	}

        public void atualizar(float temperatura, float humidade, float pressao) {
                pressaoAnterior = pressaoAtual;
		pressaoAtual = pressao;

		mostrar();
	}


	public void mostrar() {
		System.out.print("Previsao: ");
		if (pressaoAtual > pressaoAnterior) {
			System.out.println("Tempo bom.");
		} else if (pressaoAtual == pressaoAnterior) {
			System.out.println("Mais do mesmo.");
		} else if (pressaoAtual < pressaoAnterior) {
			System.out.println("Tempo chuvoso.");
		}
	}
}
