package faculdade.templatemethod;

public class ClasseConcreta1 extends ClasseAbstrata {

	@Override
	protected void operacao1() {
		System.out.println("Execução de " + this.getClass().getName() + "." + "operacao1");
	}

	@Override
	protected void operacao2() {
		System.out.println("Execução de " + this.getClass().getName() + "." + "operacao2");
	}

}
