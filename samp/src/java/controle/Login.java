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
import modelo.Usuario;

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
        
        String sql = "SELECT cod_aluno, nome, cod_curso, cod_turma FROM aluno WHERE usuario=? and senha=?";
        try {
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, usuario);
            stmt.setString(2, senha);
            rs  = stmt.executeQuery();
            rs.next();
            
            aluno.setCodAluno((rs.getInt(1)));
            aluno.setNome((rs.getString(2)));
            aluno.setCodCurso((rs.getInt(3)));
            aluno.setCodTurma((rs.getInt(4)));
            
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        return aluno;
    }
    
    public Usuario logarUsuario (String user, String senha){
        Usuario usuario = new Usuario();
        
        String sql = "SELECT cod_usuario, nome, cod_perfil FROM usuario WHERE usuario=? and senha=?";
        try {
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, user);
            stmt.setString(2, senha);
            rs  = stmt.executeQuery();
            rs.next();
            
            usuario.setCodUsuario((rs.getInt(1)));
            usuario.setNome((rs.getString(2)));
            usuario.setCodPerfil((rs.getInt(3)));
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        
        return usuario;
    }
    
}
