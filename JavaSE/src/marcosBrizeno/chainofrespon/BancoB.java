package marcosBrizeno.chainofrespon;

public class BancoB extends BancoChain {

	public BancoB() {
		super(IDBancos.bancoB);
	}

	@Override
	protected void efetuaPagamento() {
		System.out.println("Pagamento efetuado no banco B");
	}

    @Override
    protected void quemSou() {
        System.out.println("Sou Banco B");
    }

}
