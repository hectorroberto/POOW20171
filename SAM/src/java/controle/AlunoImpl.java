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
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.Aluno;

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
    
}
