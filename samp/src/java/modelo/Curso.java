
package modelo;

/**
 *
 * @author DTEC
 */
public class Curso {
    private int codCurso;
    private String nome;
    private Coordenador coordenador;
    
    public Curso(){
        coordenador = new Coordenador();
    }
    

    public int getCodCurso() {
        return codCurso;
    }

    public void setCodCurso(int codCurso) {
        this.codCurso = codCurso;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getCodCoordenador() {
        return coordenador.getCodCoordenador();
    }

    public void setCodCoordenador(int codCoordenador) {
        coordenador.setCodCoordenador(codCoordenador);
    }
    
    public void setNomeCoordenador(String nomeCoordenador){
        coordenador.setNome(nomeCoordenador);
    }
    
    public String getNomeCoordenador(){
        return coordenador.getNome();
    }
    
    
}
