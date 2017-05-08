
package controle;
import dao.AlunoDao;
import modelo.Aluno;
import dao.ConnectionFactory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Hector Roberto
 */
public class AlunoImpl extends Login implements AlunoDao{
    Connection conn = ConnectionFactory.getConnection();
    PreparedStatement stmt;
    ResultSet rs;
    
   
    
}
