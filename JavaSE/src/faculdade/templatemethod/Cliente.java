package faculdade.templatemethod;

public class Cliente {

	public static void main(String[] args) {
		ClasseConcreta1 classeConcreta1 = new ClasseConcreta1();
		classeConcreta1.templateMethod();

		System.out.println("\n");
		ClasseConcreta2 classeConcreta2 = new ClasseConcreta2();
		classeConcreta2.templateMethod();

		System.out.println("\n");
		ClasseConcreta3 classeConcreta2ComSuper = new ClasseConcreta3();
		classeConcreta2ComSuper.templateMethod();

		System.out.println("\n");
		ClasseConcreta4 classeConcreta3 = new ClasseConcreta4();
		classeConcreta3.templateMethod();
                
	}
}
