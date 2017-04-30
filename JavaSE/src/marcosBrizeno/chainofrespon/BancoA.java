package marcosBrizeno.chainofrespon;

public class BancoA extends BancoChain {

	public BancoA() {
		super(IDBancos.bancoA);
	}

	@Override
	protected void efetuaPagamento() {
		System.out.println("Pagamento efetuado no banco A");
	}

    @Override
    protected void quemSou() {
        System.out.println("Sou Banco A");
    }
}
