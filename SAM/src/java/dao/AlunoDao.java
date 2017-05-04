
package dao;

import java.util.List;
import modelo.Professor;
import modelo.Aluno;

/**
 *
 * @author Hector Roberto
 */
public interface AlunoDao {
    public Aluno logar(String usuario, String senha);
    public List<Professor> getListProfessor(int codAluno);
}
