/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package treinando.javaprogressivo.enum1;

import java.util.Scanner;

public class EnumTest {
    
    public enum Bebida{
        
        CocaCola("Coca-cola", 2.00),
        Suco("Suco", 1.50),
        Agua("Agua", 1.00);

        private double preco;
        private String nome;
        
        Bebida(String nome, double preco){
            this.nome = nome;
            this.preco = preco;
        }

        public double getPreco(){
            return this.preco;
        }
        
        public String getNome(){
            return this.nome;
        }
    }
    
    public enum Comida{
        Sanduiche("Sanduiche", 4.0),
        HotDog("HotDog", 3.0),
        Xburger("X-Burger", 3.5);
        
        private double preco;
        private String nome;
        
        Comida(String nome, double preco){
            this.nome = nome;
            this.preco = preco;
        }
        
        public double getPreco(){
            return this.preco;
        }
        
        public String getNome(){
            return this.nome;
        }
    }
    
    public static void menu(){
        System.out.println("\tBebidas");
        System.out.println("1." + Bebida.CocaCola.getNome() + ": R$" + Bebida.CocaCola.getPreco());
        System.out.println("2." + Bebida.Suco.getNome() + ": R$" + Bebida.Suco.getPreco());
        System.out.println("3." + Bebida.Agua.getNome() + ": R$" + Bebida.Agua.getPreco());
        
        System.out.println("\tComidas");
        System.out.println("4." + Comida.Sanduiche.getNome() + ": R$" + Comida.Sanduiche.getPreco());
        System.out.println("5." + Comida.HotDog.getNome() + ": R$" + Comida.HotDog.getPreco());
        System.out.println("6." + Comida.Xburger.getNome() + ": R$" + Comida.Xburger.getPreco());
        
        System.out.println("0. Sair");
        System.out.print("Escolha sua opção: ");
    }
    
    public static double preco(int opcao){
        switch( opcao ){
            case 1:
                return Bebida.CocaCola.getPreco();
            case 2:
                return Bebida.Suco.getPreco();
            case 3:
                return Bebida.Agua.getPreco();
            case 4:
                return Comida.Sanduiche.getPreco();
            case 5:
                return Comida.HotDog.getPreco();
            case 6:
                return Comida.Xburger.getPreco();
            default:
                return 0.0;
        
        }
    }
    public static void main(String[] args) {
        double total=0.0;
        int opcao=0;
        Scanner entrada = new Scanner(System.in);
        
        do{
            menu();
            opcao = entrada.nextInt();
            total += preco(opcao);
            
            System.out.println("Opção escolhida: " + opcao);
            System.out.println("Valor de sua conta: " + total + "\n");
            
        }while(opcao != 0);
        

    }
}