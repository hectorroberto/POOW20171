
package treinando.herancas1;

/**
 *
 * @author Administrador
 */
public class Humano {
    
    public static void main(String[] args) {
        Mamifero h1 = new Mamifero("Branco", "Homo Sapiens", false, "Mundo", "Tudo");
        
        System.out.println(h1.animalCome());
        System.out.println(h1.terrestreHabitat());
        h1.setOvo(false);
        System.out.println(h1.isOvo()); 
        System.out.println(h1.getStatusLocomocao("Correndo"));
        System.out.println(h1.animalMove("Andar"));
        System.out.println(h1.getAnimal());
        
        Animal h2 = new Mamifero("Branco", "Homo Sapiens", false, "Mundo", "Tudo");
        
        System.out.println(h2.getAnimal());
        
    }
    
    
}
