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
    public List<Professor> getListProfessor(int codAluno) {
        List<Professor> listProfessor = new ArrayList<>();
                            
        String sql = "select p.cod_professor, p.nome_professor " +
            "from disciplina_has_aluno da, disciplina d, aluno a, professor p where " +
            "da.disciplina_cod_disciplina = d.cod_disciplina " +
            "and da.disciplina_professor_cod_professor = p.cod_professor " +
            "and da.aluno_cod_aluno = a.cod_aluno " +
            "and a.cod_aluno = ?";
        try {
            
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, codAluno);
            rs  = stmt.executeQuery();
            
            
            while(rs.next()){
                Professor professor = new Professor();
                professor.setCodProfessor(rs.getInt(1));
                professor.setNomeProfessor(rs.getString(2));
                
                listProfessor.add(professor);
            }
        } catch (SQLException ex) {
            Logger.getLogger(AlunoImpl.class.getName()).log(Level.SEVERE, null, ex);
            ex.printStackTrace();
        }
        
        return listProfessor;
    }
    
}
