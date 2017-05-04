/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import dao.ConnectionFactory;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Connection;
import java.sql.SQLException;
import modelo.Aluno;

/**
 *
 * @author DTEC
 */
public class PreencherModelo {
    
        Connection conn = ConnectionFactory.getConnection();
        PreparedStatement stmt;
        ResultSet rs;
    
    public Aluno popular (int cod, Aluno aluno){
        
        String sql = "SELECT * FROM aluno WHERE cod_aluno =?";
        try {
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, cod);
            rs  = stmt.executeQuery();
            rs.next();
            
            aluno.setId((rs.getInt(1)));
            aluno.setNome((rs.getString(2)));
            aluno.setCodCurso((rs.getInt(3)));
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        return aluno;
    }
    
}
