
package faculdade.oberver;

public class Teste {

    public static void main(String[] args) {
		DadosDoTempo dadosDoTempo = new DadosDoTempo();
	
		MostrarCondicoesAtuais mostrarCondicoesAtuais = 
			new MostrarCondicoesAtuais(dadosDoTempo);
		MostrarEstatisticas mostrarEstatisticas = new MostrarEstatisticas(dadosDoTempo);
		MostrarPrevisao mostrarPrevisao = new MostrarPrevisao(dadosDoTempo);

		dadosDoTempo.setMedidas(80, 65, 30.4f);
		dadosDoTempo.setMedidas(82, 70, 29.2f);
		dadosDoTempo.setMedidas(78, 90, 29.2f);
    }
    
}
