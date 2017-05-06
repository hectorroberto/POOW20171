package marcosBrizeno.state1;

public interface MarioState {
	MarioState pegarCogumelo();

	MarioState pegarFlor();

	MarioState pegarPena();

	MarioState levarDano();
}
