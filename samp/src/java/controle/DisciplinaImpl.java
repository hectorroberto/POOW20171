
package controle;

import dao.ConnectionFactory;
import dao.DisciplinaDao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
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
            String sql ="INSERT INTO disciplina "+
                        "(nome, cod_professor, cod_curso, cod_coordenador) "+
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

    @Override
    public List<Disciplina> findByCodCurso(int codCurso) {
        
        String sql = "SELECT cod_disciplina, nome, cod_curso, cod_turma, cod_professor "
                    + "FROM disciplina "
                    + "WHERE cod_curso = ?";
        
        List<Disciplina> listDisciplina = new ArrayList<>();
        
        try {
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, codCurso);
            rs = stmt.executeQuery();
            
            while(rs.next()){
                Disciplina d = new Disciplina();
                d.setCodDisciplina((rs.getInt(1)));
                d.setNome(rs.getString(2));
                d.setCodCurso((rs.getInt(3)));
                d.setCodTurma((rs.getInt(4)));
                d.setCodProfessor((rs.getInt(5)));
                listDisciplina.add(d);
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(DisciplinaImpl.class.getName()).log(Level.SEVERE, null, ex);
            ex.printStackTrace();
        }
        
        return listDisciplina;
    }
    
    
    
}
