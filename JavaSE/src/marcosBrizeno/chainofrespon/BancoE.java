package marcosBrizeno.chainofrespon;

public class BancoE extends BancoChain {

	public BancoE() {
		super(IDBancos.bancoE);
	}

	@Override
	protected void efetuaPagamento() {
		System.out.println("Pagamento efetuado no banco E");
	}

    @Override
    protected void quemSou() {
        System.out.println("Sou Banco E");
    }

}
