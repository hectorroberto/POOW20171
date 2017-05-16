/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import dao.ConnectionFactory;
import dao.TurmaDao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.Turma;

/**
 *
 * @author Hector Roberto
 */
public class TurmaImpl implements TurmaDao{
    
    Connection conn = ConnectionFactory.getConnection();
    PreparedStatement stmt;
    ResultSet rs;
    
    @Override
    public List<Turma> getAllTurma() {
        List<Turma> listTurma = new ArrayList<>();
        String sql = "SELECT cod_turma, descricao FROM turma";
        
        try {
            stmt = conn.prepareStatement(sql);
            rs  = stmt.executeQuery();
            
            while(rs.next()){
                Turma t = new Turma();
                t.setCodTurma(rs.getInt(1));
                t.setDescricao(rs.getString(2));
                
                listTurma.add(t);
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(TurmaImpl.class.getName()).log(Level.SEVERE, null, ex);
            ex.printStackTrace();
        }
        return listTurma;
    }

    @Override
    public void cadastrar(Turma turma) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    
}
