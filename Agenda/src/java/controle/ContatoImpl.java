package controle;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.ContatoDao;
import dao.ConnectionFactory;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.Cidade;
import modelo.Contato;

public class ContatoImpl implements ContatoDao {

    Connection conn = ConnectionFactory.getConnection();
    PreparedStatement stmt;
    ResultSet rs;

    @Override
    public void salvar(Contato contato) {
        try {
            String sql = "insert into contato "
                    + "(nome, telefone, idcidade) values(?,?,?)";

            stmt = conn.prepareStatement(sql);

            stmt.setString(1, contato.getNome());
            stmt.setString(2, contato.getTelefone());
            stmt.setInt(3, contato.getCidade().getId());

            stmt.execute();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void atualizar(Contato contato) {
        // TODO Auto-generated method stub
        String sql = "update contato set nome = ?, telefone = ?, "
                + "idcidade =? where id = ?";
        
        try {
            stmt = conn.prepareStatement(sql);

            stmt.setString(1, contato.getNome());
            stmt.setString(2, contato.getTelefone());
            stmt.setInt(3, contato.getCidade().getId());
            // atualia onde o contato for igual a esse id
            stmt.setInt(4, contato.getId());

            stmt.executeUpdate();

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    @Override
    public void remover(Contato contato) {
        // TODO Auto-generated method stub
        String sql = "delete from contato where id = ?";
        try {
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, contato.getId());

            stmt.execute();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    @Override
    public List<Contato> getListAll() {
        List<Contato> list = new ArrayList<Contato>();
        try {
            String sql = "select id, nome, telefone, idcidade from contato";
            stmt = conn.prepareStatement(sql);
            rs = stmt.executeQuery();
            while (rs.next()) {
                Contato contato = new Contato();
                contato.setId(rs.getInt(1));
                contato.setNome(notNull(rs.getString(2)));
                contato.setTelefone(notNull(rs.getString(3)));

                //cria um objeto cidade
                Cidade cidade = new CidadeImpl().findById((rs.getInt(4)));

                //pesquiss e retorna as informações da cidade do contato
                contato.setCidade(cidade);
//                                System.out.println("id da cidade:"+rs.getInt(4));
                list.add(contato);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public Contato findById(int id) {
        String sql = "select id, nome, telefone, idcidade "
                + "from contato where id = ?";
        Contato contato = new Contato();
        try {
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, id);
            rs = stmt.executeQuery();
            rs.next();
            contato.setId(rs.getInt(1));
            contato.setNome(notNull(rs.getString(2)));
            contato.setTelefone(notNull(rs.getString(3)));

            Cidade cidade = new CidadeImpl().findById((rs.getInt(4)));

            //pesquiss e retorna as informações da cidade do contato
            contato.setCidade(cidade);

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return contato;
    }

    public String notNull(String msg) {
        return (msg == null ? "" : msg);
    }

}
