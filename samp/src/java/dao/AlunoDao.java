
package dao;
import java.util.List;

import modelo.Aluno;
import modelo.Professor;

/**
 *
 * @author Hector Roberto
 */
public interface AlunoDao{
    public List<Professor> getListProfessor (int codAluno);
}
