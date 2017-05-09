/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import dao.ConnectionFactory;
import dao.CursoDao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.Curso;

/**
 *
 * @author DTEC
 */
public class CursoImpl implements CursoDao{
    
    Connection conn = ConnectionFactory.getConnection();
    PreparedStatement stmt;
    ResultSet rs;
    
    @Override
    public List<Curso> getAllCurso() {
        List<Curso> listCurso = new ArrayList<>();
        String sql = "SELECT cod_curso, nome, cod_coordenador FROM curso ORDER BY nome";
        
        try {
            stmt = conn.prepareStatement(sql);
            rs  = stmt.executeQuery();
            
            while(rs.next()){
                Curso c = new Curso();
                c.setCodCurso(rs.getInt(1));
                c.setNome(rs.getString(2));
                c.setCodCoordenador(rs.getInt(3));
                
                listCurso.add(c);
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(CursoImpl.class.getName()).log(Level.SEVERE, null, ex);
            ex.printStackTrace();
        }
        return listCurso;
    }

    @Override
    public void cadastrar(Curso curso) {
        
        try {
            String sql = "INSERT INTO curso"+
                        "(nome, cod_coordenador)"+
                        "VALUES (?, ?)";

            stmt = conn.prepareStatement(sql);

            stmt.setString(1, curso.getNome());
            stmt.setInt(2, curso.getCodCoordenador());

            stmt.execute();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    
    
}
