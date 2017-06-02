
package dao;

import java.util.List;
import modelo.Disciplina;

/**
 *
 * @author Laboratorio
 */
public interface DisciplinaDao {
    public void cadastrar (Disciplina disciplina);
    public List<Disciplina> findByCodCurso(int codCurso);
}
