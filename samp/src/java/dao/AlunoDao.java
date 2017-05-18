
package dao;
import java.util.List;

import modelo.Aluno;
import modelo.Professor;
import modelo.Turma;

/**
 *
 * @author Hector Roberto
 */
public interface AlunoDao{
    public List<Professor> getListProfessor (int codAluno);
    public void cadastrar(Aluno aluno);
    public List<Aluno> getListAluno();
    public String findNomeByCodTurma (int codTurma);


}
