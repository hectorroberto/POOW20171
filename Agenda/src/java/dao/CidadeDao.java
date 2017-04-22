/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.List;
import modelo.Cidade;

/**
 *
 * @author Maicon
 */
public interface CidadeDao {
    
    public void salvar(Cidade c);
    public void atualizar(Cidade c);
    public void remover(Cidade c);
    public List<Cidade> getListAll();
    public Cidade findById(int id);
    
    
}
