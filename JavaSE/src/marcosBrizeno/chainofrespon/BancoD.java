package marcosBrizeno.chainofrespon;

public class BancoD extends BancoChain {

	public BancoD() {
		super(IDBancos.bancoD);
	}

	@Override
	protected void efetuaPagamento() {
		System.out.println("Pagamento efetuado no banco D");
	}

    @Override
    protected void quemSou() {
        System.out.println("Sou Banco D");
    }

}
