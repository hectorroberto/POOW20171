
package dao;

import java.util.List;
import modelo.Professor;

/**
 *
 * @author Laboratorio
 */
public interface ProfessorDao {
    List<Professor> getAllProfessor();
    void cadastrar(Professor professor);
}
