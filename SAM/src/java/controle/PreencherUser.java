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
    
    protected Aluno preencherAluno(User aluno){
       aluno = null;
       return (Aluno) aluno;
    }
    
    protected Gerente preencherGerente(User gerente){
        gerente = null;
        return gerente;
    }
    
    
}
