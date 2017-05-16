/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.List;
import modelo.Turma;

/**
 *
 * @author Hector Roberto
 */
public interface TurmaDao {
    
    public List<Turma> getAllTurma();
    public void cadastrar(Turma turma);
}
