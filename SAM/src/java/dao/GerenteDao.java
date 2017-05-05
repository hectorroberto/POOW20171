/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import modelo.Gerencial;

/**
 *
 * @author Laboratorio
 */
public interface GerenteDao {
    public Gerencial logar(String usuario, String senha);

}
