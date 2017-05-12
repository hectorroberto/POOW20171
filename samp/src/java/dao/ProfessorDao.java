
package dao;

import java.util.List;
import modelo.Professor;

/**
 *
 * @author Laboratorio
 */
public interface ProfessorDao {
    List<Professor> getAllProfessor();
    public void cadastrar(Professor professor);
}
