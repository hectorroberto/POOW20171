
package treinando.herancas1;

public abstract class Animal {
    
    private String cor;
    private Classe classe;
    private String animal;
    
    Animal(String cor, String classe){
        this.classe = new Classe (classe);
        this.cor = cor;
    }
    
    String animalMove (String move){
        return "Este animal se move " + move;
    }
    
    abstract String animalCome();
    
    public String getCor(){
        return this.cor;
    }
    
    public void setCor(String cor){
        this.cor = cor;
    }
    
    public String getAnimal(){
        return "Puxada da Classe Animal";
    }
    
}
