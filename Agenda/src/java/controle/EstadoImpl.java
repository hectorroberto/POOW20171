/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import dao.ConnectionFactory;
import dao.EstadoDao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.Estado;

/**
 *
 * @author Maicon
 */
public class EstadoImpl implements EstadoDao{
    
    Connection conn = ConnectionFactory.getConnection();
    PreparedStatement stmt;
    ResultSet rs;

    @Override
    public void salvar(Estado e) {
        String sql = "INSERT INTO estado (nome) VALUES(?)";
        try {
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, e.getNome());
            
            stmt.execute();
            
            
        } catch (SQLException ex) {
            Logger.getLogger(EstadoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void atualizar(Estado e) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void remover(Estado e) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Estado> getListAll() {
        List<Estado> list = new ArrayList<>();
        String sql = "SELECT id, nome FROM estado ORDER BY nome";
        try {
            stmt = conn.prepareStatement(sql);
            rs = stmt.executeQuery();
            
            while(rs.next()){
                Estado e = new Estado();
                e.setId(rs.getInt(1));
                e.setNome(rs.getString(2));
                
                list.add(e);
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(EstadoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    

    @Override
    public Estado findById(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
