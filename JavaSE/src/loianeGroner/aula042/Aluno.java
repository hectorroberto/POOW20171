
package loianeGroner.aula042;


/**
 *
 * @author Administrador
 */
public class Aluno extends Pessoa {
    private String matricula;
    private String curso;
    private String turma;

    public Aluno(String nome, String cpf, String dataNascimento, String matricula, String curso, String turma) {
        super(nome, cpf, dataNascimento);
        this.matricula = matricula;
        this.curso = curso;
        this.turma = turma;
        
    }
  
    
    public String getTurma() {
        return turma;
    }

    public void setTurma(String turma) {
        this.turma = turma;
    }
    
    public String getMatricula() {
        return matricula;
    }

    public void setMatricula(String matricula) {
        this.matricula = matricula;
    }

    public String getCurso() {
        return curso;
    }

    public void setCurso(String curso) {
        this.curso = curso;
    }

    @Override
    public String toString() {
        
        return super.toString() + "Aluno{" + "matricula=" + matricula + ", curso=" + curso + ", turma=" + turma + '}';
    }
    
    
}
