
package faculdade.oberver;

import java.util.*;

public class MostrarEstatisticas implements Observer, MostrarDados {
	private float maxTemp = 0.0f;
	private float minTemp = 200;
	private float tempSum= 0.0f;
	private int numLeituras;
	private DadosDoTempo dadosDoTempo;

	public MostrarEstatisticas(DadosDoTempo dadosDoTempo) {
		this.dadosDoTempo = dadosDoTempo;
		dadosDoTempo.registrarObservador(this);
	}

	public void atualizar(float temperatura, float humidade, float pressao) {
		tempSum += temperatura;
		numLeituras++;

		if (temperatura > maxTemp) {
			maxTemp = temperatura;
		}
 
		if (temperatura < minTemp) {
			minTemp = temperatura;
		}

		mostrar();
	}

	public void mostrar() {
		System.out.println("Temperatura Media/Maxima/Minima = " + (tempSum / numLeituras)
			+ "/" + maxTemp + "/" + minTemp);
	}
}
