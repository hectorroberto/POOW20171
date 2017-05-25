/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.List;
import modelo.Coordenador;

/**
 *
 * @author DTEC
 */
public interface CoordenadorDao {
    List<Coordenador> getAllCoordenador ();
    public void cadastrar (Coordenador coorndenador);
    public String findByCod(int codCoordenador);
}
