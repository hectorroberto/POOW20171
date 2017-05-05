/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import dao.ConnectionFactory;
import dao.GerenteDao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import modelo.Gerencial;

/**
 *
 * @author Laboratorio
 */
public class GerencialImpl implements GerenteDao{
    Connection conn = ConnectionFactory.getConnection();
    PreparedStatement stmt;
    ResultSet rs;
    
    @Override
    public Gerencial logar(String usuario, String senha) {
        Gerencial gerente = new Gerencial();
        
        String sql = "SELECT cod_gerencial, nome_gerente, perfil_cod_perfil FROM gerencial WHERE usuario=? and senha=?";
        try {
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, usuario);
            stmt.setString(2, senha);
            rs  = stmt.executeQuery();
            rs.next();
            
            gerente.setCodGerencial(rs.getInt(1));
            gerente.setNomeGerente(rs.getString(2));
            gerente.setPerfilCodPerfil(rs.getInt(3));
            
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        return gerente;
    }
    
}
