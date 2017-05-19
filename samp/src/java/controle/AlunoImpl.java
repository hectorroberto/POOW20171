
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
import modelo.Aluno;
import modelo.Professor;
import modelo.Turma;

/**
 * @author Hector Roberto
 */
public class AlunoImpl extends Login implements AlunoDao{
    Connection conn = ConnectionFactory.getConnection();
    PreparedStatement stmt;
    ResultSet rs;

    @Override
    public List<Professor> getListProfessor(int codAluno) {
        List<Professor> listProfessor = new ArrayList<>();
        
        String sql = "SELECT p.cod_professor, p.nome, d.nome " +
                    "FROM aluno a, disciplina_aluno da, disciplina d, professor p " +
                    "WHERE p.cod_professor = d.cod_professor " +
                    "AND d.cod_disciplina = da.cod_disciplina " +
                    "AND da.cod_aluno = a.cod_aluno " +
                    "AND a.cod_aluno = ?";
        try {
            
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, codAluno);
            rs  = stmt.executeQuery();
            
            Professor professor;
            while(rs.next()){
                professor = new Professor();
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

    @Override
    public void cadastrar(Aluno aluno) {
         try {
            String sql = "INSERT INTO aluno "+
                        "(nome, usuario, senha, cod_curso, cod_turma) "+
                        "VALUES (?, ?, ?, ?, ?)";

            stmt = conn.prepareStatement(sql);

            stmt.setString(1, aluno.getNome());
            stmt.setString(2, aluno.getUsuario());
            stmt.setString(3, aluno.getSenha());
            stmt.setInt (4, aluno.getCodCurso());
            stmt.setInt (5, aluno.getCodTurma());

            stmt.execute();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Aluno> getListAluno() {
        
        List<Aluno> listAluno = new ArrayList<>();
        
        String sql = "SELECT cod_aluno, nome, cod_curso, cod_turma " +
                    "FROM aluno";
                   
        try {
            
            stmt = conn.prepareStatement(sql);
            rs  = stmt.executeQuery();
            
            while(rs.next()){
                Aluno aluno = new Aluno();
                aluno.setCodAluno(rs.getInt(1));
                aluno.setNome(rs.getString(2));
                aluno.setCodCurso(rs.getInt(3));
                aluno.setCodTurma(rs.getInt(4));
                
                listAluno.add(aluno);
            }
        } catch (SQLException ex) {
            Logger.getLogger(AlunoImpl.class.getName()).log(Level.SEVERE, null, ex);
            ex.printStackTrace();
        }
        
        return listAluno;
    }

    @Override
    public String findNomeByCodTurma(int codTurma) {
        String sql = "SELECT descricao FROM turma "+
                     "WHERE cod_turma = ?";
        
        String nome = null;
        
        try {
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, codTurma);
            rs = stmt.executeQuery();
            
            rs.next();
            nome = rs.getString(1);
            
        } catch (SQLException ex) {
            Logger.getLogger(AlunoImpl.class.getName()).log(Level.SEVERE, null, ex);
            ex.printStackTrace();
        }
        
        return nome;
    }
    
    
   
    
}
