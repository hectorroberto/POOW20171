
package modelo;

import controle.ProfessorImpl;

/**
 *
 * @author Laboratorio
 */
public class Disciplina {
    private int codDisciplina;
    private String nome;
    private int codProfessor;
    private int codCurso;
    private int codTurma;
    private int codCoordenador;
    private Professor professor;
    ProfessorImpl p = new ProfessorImpl();
    
    public Disciplina(){
        professor = new Professor();
    }
    

    public int getCodDisciplina() {
        return codDisciplina;
    }

    public void setCodDisciplina(int codDisciplina) {
        this.codDisciplina = codDisciplina;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getCodProfessor() {
        return codProfessor;
    }

    public void setCodProfessor(int codProfessor) {
        this.codProfessor = codProfessor;
        this.professor = p.findByCod(codProfessor);
    }

    public int getCodCurso() {
        return codCurso;
    }

    public void setCodCurso(int codCurso) {
        this.codCurso = codCurso;
    }

    public int getCodCoordenador() {
        return codCoordenador;
    }

    public void setCodCoordenador(int codCoordenador) {
        this.codCoordenador = codCoordenador;
    }

    public int getCodTurma() {
        return codTurma;
    }

    public void setCodTurma(int codTurma) {
        this.codTurma = codTurma;
    }

    public String getNomeProfessor() {
        return professor.getNome();
    }

    public void setNomeProfessor(String nomeProfessor) {
        professor.setNome(nomeProfessor);
    }
}
