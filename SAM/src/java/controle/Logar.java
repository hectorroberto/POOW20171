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
public class Logar {
    Connection conn = ConnectionFactory.getConnection();
    PreparedStatement stmt;
    ResultSet rs;
    
    public User logar(String usuario, String senha) {
        User user = null;
        PreencherUser preencher = new PreencherUser();
        String perfil = capturarPerfil(usuario, senha);
        
        switch(perfil){
            case "Aluno":
                user = new Aluno();
                user = preencher.preencherAluno(usuario, senha);
                break;
            case "Gerente":
                user = new Gerente();
                user = preencher.preencherGerente(usuario, senha);
                break;
        }
        return user;
    }
    
    protected String capturarPerfil(String usuario, String senha){
        String perfil = null;
        
        String sql =
                "SELECT p.descricao FROM user u, peril p"
                + "WHERE u.usuario = ?"
                + "AND u.senha = ?"
                + "AND u.cod_perfil = p.cod_perfil"
                + "LIMIT 1";
        try {
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, usuario);
            stmt.setString(2, senha);
            rs  = stmt.executeQuery();
            rs.next();
            perfil = (rs.getString(1));
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return perfil;
    }
            
}
