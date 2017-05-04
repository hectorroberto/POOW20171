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
    public String logar(String usuario, String senha) {
        String nome = null;
        
        String sql = "SELECT nome_aluno FROM aluno WHERE usuario=? and senha=?";
        try {
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, usuario);
            stmt.setString(2, senha);
            rs  = stmt.executeQuery();
            rs.next();
            nome = (rs.getString(1));
            
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        return nome;
    }

    @Override
    public List<Professor> getListProfessor(int codAluno) {
        List<Professor> listProfessor = new ArrayList<>();
        
        String sql = "Select id, nome, idestado from cidade order by nome";
        try {
            stmt = conn.prepareStatement(sql);
            rs  = stmt.executeQuery();
            
            while(rs.next()){
                Cidade c = new Cidade();
                c.setId(rs.getInt(1));
                c.setNome(rs.getString(2));
                c.getEstado().setId(rs.getInt(3));
                
                listCidades.add(c);
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(CidadeImpl.class.getName()).log(Level.SEVERE, null, ex);
            ex.printStackTrace();
        }
        
        return listProfessor;
    }
    
}
