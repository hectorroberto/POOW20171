
package controle;
import dao.AlunoDao;
import dao.ConnectionFactory;
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
 * @author Hector Roberto
 */
public class AlunoImpl extends Login implements AlunoDao{
    Connection conn = ConnectionFactory.getConnection();
    PreparedStatement stmt;
    ResultSet rs;

    @Override
    public List<Professor> getListProfessor(int codAluno) {
        List<Professor> listProfessor = new ArrayList<>();
        
        String sql = "SELECT p.cod_professor, p.nome, d.nome FROM" +
                    "professor p, disciplina d, disciplina_aluno da, aluno a WHERE" +
                    "da.cod_disciplina = d.cod_disciplina" +
                    "AND da.cod_professor = p.cod_professor" +
                    "AND da.cod_aluno = a.cod_aluno" +
                    "AND a.cod_aluno = ?";
        try {
            
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, codAluno);
            rs  = stmt.executeQuery();
            
            
            while(rs.next()){
                Professor professor = new Professor();
                professor.setCodProfessor(rs.getInt(1));
                professor.setNome(rs.getString(2));
                professor.setDisciplina(rs.getString(3));
                
                listProfessor.add(professor);
            }
        } catch (SQLException ex) {
            Logger.getLogger(AlunoImpl.class.getName()).log(Level.SEVERE, null, ex);
            ex.printStackTrace();
        }
        
        return listProfessor;
    }
    
   
    
}
