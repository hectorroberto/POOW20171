/*
Referente à aula 24.
Java24_OO.java
 */
package loianeGroner.aula021;
public class Carro {
    private String marca;
    private String modelo;
    private int qtdPassageiros;
    private double qtdCombustivel;
    private double consumoCombustivel;

    public Carro(String marca, String modelo, int qtdPassageiros, double qtdCombustivel, double consumoCombustivel) {
        this.marca = marca;
        this.modelo = modelo;
        this.qtdPassageiros = qtdPassageiros;
        this.qtdCombustivel = qtdCombustivel;
        this.consumoCombustivel = consumoCombustivel;
    }
    
    public Carro(){}
    
    public void setMarca(String marca){
        this.marca = marca;
    }

    public String getMarca() {
        return marca;
    }

    public void setQtdPassageiros(int qtdPassgeiros) {
        this.qtdPassageiros = qtdPassageiros;
    }
    
    public int getQtdPassageiros(){
        return this.qtdPassageiros;
    }
    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }


    public double getQtdCombustivel() {
        return qtdCombustivel;
    }

    public double getConsumoCombustivel() {
        return consumoCombustivel;
    }

    void exibirAutonomia(){
        System.out.println("A capacidade de km do veículo é de "+qtdCombustivel*consumoCombustivel+"km");
    }
    
    double calcularAutonomia(){
        System.out.println("O metodo calcularAutonomia foi chamado.");
        return qtdCombustivel*consumoCombustivel;
    }
    
    double calculaCapacidadeKm(double km){
        return qtdCombustivel/km;
    }
    
}
