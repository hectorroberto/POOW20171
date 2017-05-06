package marcosBrizeno.chainofrespon;

public class BancoF extends BancoChain {

	public BancoF() {
		super(IDBancos.bancoF);
	}

	@Override
	protected void efetuaPagamento() {
		System.out.println("Pagamento efetuado no banco F");
	}

    @Override
    protected void quemSou() {
        System.out.println("Sou Banco F");
    }

}
