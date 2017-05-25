/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.List;
import modelo.Curso;

/**
 *
 * @author DTEC
 */
public interface CursoDao {
    
    public List<Curso> getAllCurso();
    public void cadastrar(Curso curso);
    
}
