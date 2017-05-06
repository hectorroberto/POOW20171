package dao;

import java.util.List;

import modelo.Contato;

public interface ContatoDao {
	
	public void salvar(Contato contato);
	public void atualizar(Contato contato);
	public void remover(Contato contato);
	public List<Contato> getListAll();
	public Contato findById(int id);

}
