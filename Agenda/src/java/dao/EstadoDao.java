/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.List;
import modelo.Estado;

/**
 *
 * @author Maicon
 */
public interface EstadoDao {
    
    public void salvar(Estado e);
    public void atualizar(Estado e);
    public void remover(Estado e);
    public List<Estado> getListAll();
    public Estado findById(int id);
    
}
