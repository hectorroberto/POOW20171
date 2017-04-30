package marcosBrizeno.chainofrespon;

public class Cliente {
	public static void main(String[] args) {
		BancoChain bancos = new BancoA();
		bancos.setNext(new BancoB());
		bancos.setNext(new BancoC());
		bancos.setNext(new BancoD());
                bancos.setNext(new BancoE());
                bancos.setNext(new BancoF());
		
		try {
			bancos.efetuarPagamento(IDBancos.bancoC);
			bancos.efetuarPagamento(IDBancos.bancoD);
			bancos.efetuarPagamento(IDBancos.bancoA);
			bancos.efetuarPagamento(IDBancos.bancoB);
                        
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
