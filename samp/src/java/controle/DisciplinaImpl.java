
package controle;

import dao.ConnectionFactory;
import dao.DisciplinaDao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import modelo.Disciplina;

/**
 *
 * @author Laboratorio
 */
public class DisciplinaImpl implements DisciplinaDao{
    Connection conn = ConnectionFactory.getConnection();
    PreparedStatement stmt;
    ResultSet rs;
    
    @Override
    public void cadastrar(Disciplina disciplina) {
        try {
            String sql ="INSERT INTO disciplina"+
                        "(nome, cod_professor, cod_curso, cod_coordenador)"+
                        "VALUES (?, ?, ?, ?)";

            stmt = conn.prepareStatement(sql);
            stmt.setString(1, disciplina.getNome());
            stmt.setInt(2, disciplina.getCodProfessor());
            stmt.setInt(3, disciplina.getCodCurso());
            stmt.setInt(4, disciplina.getCodCoordenador());
            stmt.execute();
            
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    
    
}
