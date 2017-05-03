/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import modelo.Coordenador;
import modelo.Curso;

/**
 *
 * @author Hector Roberto
 */
public interface CursoDao {
    public String nomeCurso(int codCurso);
    public Curso getCurso(int codCurso);
    public Coordenador getCoordenador(int codCoordenador);
   
}
