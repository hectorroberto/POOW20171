package faculdade.templatemethod;

public class ClasseConcreta4 extends ClasseAbstrata {

	@Override
	protected void operacao1() {
		System.out.println("Execução de " + this.getClass().getName() + "." + "operacao1");
	}

	@Override
	protected void operacao2() {
		System.out.println("Execução de " + this.getClass().getName() + "." + "operacao2");
	}

	@Override
	protected void gancho() {
		System.out.println("Execução de " + this.getClass().getName() + "." + "gancho");
		operacao4();
		operacao5();
	}

	private void operacao4() {
		System.out.println("Execução de " + this.getClass().getName() + "." + "operacao4");
	}

	private void operacao5() {
		System.out.println("Execução de " + this.getClass().getName() + "." + "operacao5");
	}
}
