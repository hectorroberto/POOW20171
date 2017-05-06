
package treinando.herancas1;

/**
 *
 * @author Administrador
 */
public class Mamifero extends Animal implements Terrestre{

    private String alimento;
    private boolean ovo;
    private String habitat;
    

    public Mamifero(String cor, String classe, boolean ovo, String habitat, String alimento) {
        super(cor, classe);
        this.ovo = ovo;
        this.habitat = habitat;
        this.alimento = alimento;
                
    }
    
    @Override
    String animalCome() {
        return  "Este animal mamifero come " + alimento;
    }

    @Override
    public String terrestreHabitat() {
        return "Este mamifero terrestre habita no " + habitat;
    }

    public String isOvo() {
        return "O Mamifero veio do ovo: "+ovo;
    }

    public void setOvo(boolean ovo) {
        this.ovo = ovo;
    }
    
    public String getStatusLocomocao(String move){
        return super.animalMove(move) + "Chamada de Animal";
    }
    
    @Override
    String animalMove (String move){
        return "Este animal se move " + move + "Chamade de mamifero";
    }
    
    
}
