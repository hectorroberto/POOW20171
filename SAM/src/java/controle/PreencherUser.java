/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import dao.ConnectionFactory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import modelo.Aluno;
import modelo.Gerente;
import modelo.User;

/**
 *
 * @author DTEC
 */
public class PreencherUser {
    Connection conn = ConnectionFactory.getConnection();
    PreparedStatement stmt;
    ResultSet rs;
    
    protected Aluno preencherAluno(String usuario, String senha){
        Aluno aluno = new Aluno();
        String sql = "SELECT cod_user, nome, usuario, senha, cod_curso, cod_perfil"+
                    "FROM user WHERE" +
                    "usuario = ?" +
                    "AND senha = ?"+
                    "LIMIT 1";
        try {
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, usuario);
            stmt.setString(2, senha);
            rs  = stmt.executeQuery();
            rs.next();
            
            aluno.setCodUser((rs.getInt(1)));
            aluno.setNome((rs.getString(2)));
            aluno.setUsuario((rs.getString(3)));
            aluno.setSenha((rs.getString(4)));
            aluno.setCodCurso((rs.getInt(5)));
            aluno.setCodPerfil((rs.getInt(6)));
            
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
       return aluno;
    }
    
    protected Gerente preencherGerente(String usuario, String senha){
        Gerente gerente = new Gerente();
        String sql = "SELECT cod_user, nome, usuario, senha, cod_perfil"+
                    "FROM user WHERE" +
                    "usuario = ?" +
                    "AND senha = ?"+
                    "LIMIT 1";
        try {
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, usuario);
            stmt.setString(2, senha);
            rs  = stmt.executeQuery();
            rs.next();
            
            gerente.setCodUser((rs.getInt(1)));
            gerente.setNome((rs.getString(2)));
            gerente.setUsuario((rs.getString(3)));
            gerente.setSenha((rs.getString(4)));
            gerente.setCodPerfil((rs.getInt(5)));
            
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return gerente;
    }
    
}
