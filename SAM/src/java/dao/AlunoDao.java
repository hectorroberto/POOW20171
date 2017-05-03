
package dao;

import java.util.List;
import modelo.Professor;

/**
 *
 * @author Hector Roberto
 */
public interface AlunoDao {
    public String logar(String usuario, String senha);
    public List<Professor> getListProfessor(int codAluno);
}
