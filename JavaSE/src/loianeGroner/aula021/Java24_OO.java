
package loianeGroner.aula021;

public class Java24_OO {
    public static void main(String[] agrs){
        Carro van = new Carro();
        van.setMarca("Los Amigos");
        van.setModelo("La Conchita");
        van.setQtdPassageiros(2);
        //van.qtdPassageiros = 12;
        
        /*
        System.out.println(van.marca);
        System.out.println(van.modelo);
        System.out.println(van.qtdCombustivel);
        van.exibirAutonomia();
        System.out.println("Autonomia: "+van.calcularAutonomia()+"km");
        System.out.println("O carro pode percorrer: "+van.calculaCapacidadeKm(20));
        */
        System.out.println("Quantidade de passageiros: "+van.getQtdPassageiros());
    }
}
