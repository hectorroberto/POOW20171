/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hector.strategy;

/**
 *
 * @author Hector Roberto
 */
public class Run {
    public static void main(String[] args) {
        Funcionario hec = new Desenvolvedor();
        System.out.println("O Héctor é "+hec.getCargo()+" e ganha "+hec.getSalarioCalculado()+" por mes.");
        System.out.println("Mas aí houve um aumento...");
        hec.setSalarioBase(3000);
        System.out.println("Agora o Héctor é "+hec.getCargo()+" e ganha "+hec.getSalarioCalculado()+" por mes.");
        System.out.println("Mas aí ele foi promovido...");
        hec = new Gerente();
        hec.setSalarioBase(5000);
        System.out.println("Agora o Héctor é "+hec.getCargo()+" e ganha "+hec.getSalarioCalculado()+" por mes.");
        System.out.println(hec.toString());
    }
}
