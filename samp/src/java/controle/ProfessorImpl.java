
package controle;

import dao.ConnectionFactory;
import dao.ProfessorDao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.Professor;

/**
 *
 * @author Laboratorio
 */
public class ProfessorImpl implements ProfessorDao{
    Connection conn = ConnectionFactory.getConnection();
    PreparedStatement stmt;
    ResultSet rs;

    @Override
    public List<Professor> getAllProfessor() {
        List<Professor> listProfessor = new ArrayList<>();
        String sql = "SELECT cod_professor, nome FROM professor ORDER BY nome";
        
        try {
            stmt = conn.prepareStatement(sql);
            rs  = stmt.executeQuery();
            
            while(rs.next()){
                Professor p = new Professor();
                p.setCodProfessor(rs.getInt(1));
                p.setNome(rs.getString(2));
                
                listProfessor.add(p);
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(CursoImpl.class.getName()).log(Level.SEVERE, null, ex);
            ex.printStackTrace();
        }
        return listProfessor;
    }

    @Override
    public void cadastrar(Professor professor) {
        try {
            String sql = "INSERT INTO professor "+
                        "(nome) "+
                        "VALUES (?)";

            stmt = conn.prepareStatement(sql);

            stmt.setString(1, professor.getNome());

            stmt.execute();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    
}
