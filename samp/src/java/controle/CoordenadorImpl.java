/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import dao.ConnectionFactory;
import dao.CoordenadorDao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.Coordenador;

/**
 *
 * @author DTEC
 */
public class CoordenadorImpl implements CoordenadorDao {
    Connection conn = ConnectionFactory.getConnection();
    PreparedStatement stmt;
    ResultSet rs;

    @Override
    public List<Coordenador> getAllCoordenador() {
        List<Coordenador> listCoordenador = new ArrayList<>();
        
        String sql = "SELECT * FROM coordenador ORDER BY nome";
        try {
            
            stmt = conn.prepareStatement(sql);
            rs  = stmt.executeQuery();
            
            
            while(rs.next()){
                Coordenador coordenador = new Coordenador();
                coordenador.setCodCoordenador(rs.getInt(1));
                coordenador.setNome(rs.getString(2));
                
                listCoordenador.add(coordenador);
            }
        } catch (SQLException ex) {
            Logger.getLogger(AlunoImpl.class.getName()).log(Level.SEVERE, null, ex);
            ex.printStackTrace();
        }
        return listCoordenador;
    }

    @Override
    public void cadastrar(Coordenador coordenador) {
        try {
            String sql = "INSERT INTO coordenador"+
                        "(nome)"+
                        "VALUES (?)";

            stmt = conn.prepareStatement(sql);

            stmt.setString(1, coordenador.getNome());

            stmt.execute();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    
    
}
