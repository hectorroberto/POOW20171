/*
TEMPLATE METHOD
Define o esqueleto de um algoritmo em uma operação, 
postergando a definição de alguns passos para 
subclasses. O Template Method permite que as 
subclasses redefinam certos passos de um algoritmo 
sem mudar sua estrutura.
(Gamma et al, 2000, p. 301)
 */
package faculdade.templatemethod;

public abstract class ClasseAbstrata {
	protected final void templateMethod() {
		operacao1(); // especificada na sub-classe
		operacao2(); // especificada na sub-classe
		operacao3(); // especificada na super ou sub-classe
		gancho(); // execução opcional
	}

	protected abstract void operacao1();

	protected abstract void operacao2();

	protected void operacao3() {
		System.out.println("Execução de " + this.getClass().getName() + "." + "operacao3-ClasseAbstrata");
	}

	protected void gancho() {
	}

}
