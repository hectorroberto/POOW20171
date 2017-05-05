/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
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

/**
 *
 * @author Hector Roberto
 */
public class AlunoImpl implements AlunoDao{
        Connection conn = ConnectionFactory.getConnection();
        PreparedStatement stmt;
        ResultSet rs;

    @Override
    public Aluno logar(String usuario, String senha) {
        String nome = null;
        Aluno aluno = new Aluno();
        
        String sql = "SELECT cod_aluno, nome_aluno FROM aluno WHERE usuario=? and senha=?";
        try {
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, usuario);
            stmt.setString(2, senha);
            rs  = stmt.executeQuery();
            rs.next();
            
            aluno.setId((rs.getInt(1)));
            aluno.setNome((rs.getString(2)));
            
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        return aluno;
    }

    @Override
    public List<Professor> getListProfessor(int codAluno) {
        List<Professor> listProfessor = new ArrayList<>();
                            
        String sql = "select p.cod_professor, p.nome_professor" +
            "from disciplina_has_aluno da, disciplina d, aluno a, professor p where" +
            "da.disciplina_cod_disciplina = d.cod_disciplina" +
            "and da.disciplina_professor_cod_professor = p.cod_professor" +
            "and da.aluno_cod_aluno = a.cod_aluno" +
            "and a.cod_aluno = ?";
        try {
            stmt = conn.prepareStatement(sql);
            rs  = stmt.executeQuery();
            stmt.setInt(1, codAluno);
            
            while(rs.next()){
                Professor professor = new Professor();
                professor.setCodProfessor(rs.getInt(1));
                professor.setNomeProfessor(rs.getString(2));
                
                listProfessor.add(professor);
            }
           return listProfessor;
        } catch (SQLException ex) {
            Logger.getLogger(AlunoImpl.class.getName()).log(Level.SEVERE, null, ex);
            ex.printStackTrace();
        }
        
        return listProfessor;
    }
    
}
