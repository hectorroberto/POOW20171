
package faculdade.oberver;

public interface Subject {
        public void registrarObservador(Observer o);
	public void removerObservador(Observer o);
	public void notificarObservadores();    
}
