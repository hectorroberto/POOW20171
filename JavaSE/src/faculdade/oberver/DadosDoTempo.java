
package faculdade.oberver;

import java.util.*;

public class DadosDoTempo implements Subject {
        private ArrayList observadores;
	private float temperatura;
	private float humidade;
	private float pressao;
	
	public DadosDoTempo() {
		observadores = new ArrayList();
	}
	
	public void registrarObservador(Observer o) {
		observadores.add(o);
	}
	
	public void removerObservador(Observer o) {
		int i = observadores.indexOf(o);
		if (i >= 0) {
			observadores.remove(i);
		}
	}
	
	public void notificarObservadores() {
		for (int i = 0; i < observadores.size(); i++) {
			Observer observador = (Observer)observadores.get(i);
			observador.atualizar(temperatura, humidade, pressao);
		}
	}	
	public void medidasAlteradas() {
		notificarObservadores();
	}
	
	public void setMedidas(float temperatura, float humidade, float pressao) {
		this.temperatura = temperatura;
		this.humidade = humidade;
		this.pressao = pressao;
		medidasAlteradas();
	}
	
	public float getTemperatura() {
		return temperatura;
	}
	
	public float getHumidade() {
		return humidade;
	}
	
	public float getPressao() {
		return pressao;
	}
}