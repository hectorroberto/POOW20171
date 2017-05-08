/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import dao.AlunoDao;
import modelo.Aluno;
import dao.ConnectionFactory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import modelo.Gerente;

/**
 *
 * @author Hector Roberto
 */
public class Login {
    Connection conn = ConnectionFactory.getConnection();
    PreparedStatement stmt;
    ResultSet rs;
    
      
    public Aluno logarAluno (String usuario, String senha) {
        Aluno aluno = new Aluno();
        
        String sql = "SELECT cod_aluno, nome, cod_curso FROM aluno WHERE usuario=? and senha=?";
        try {
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, usuario);
            stmt.setString(2, senha);
            rs  = stmt.executeQuery();
            rs.next();
            
            aluno.setCodAluno((rs.getInt(1)));
            aluno.setNome((rs.getString(2)));
            aluno.setCodCurso((rs.getInt(3)));
            
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        return aluno;
    }
    
    public Gerente logarGerente (String usuario, String senha){
        Gerente gerente = new Gerente();
        
        String sql = "SELECT cod_gerente, nome, cod_perfil FROM gerente WHERE usuario=? and senha=?";
        try {
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, usuario);
            stmt.setString(2, senha);
            rs  = stmt.executeQuery();
            rs.next();
            
            gerente.setCodGerente((rs.getInt(1)));
            gerente.setNome((rs.getString(2)));
            gerente.setCodPerfil((rs.getInt(3)));
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        
        return gerente;
    }
    
}
