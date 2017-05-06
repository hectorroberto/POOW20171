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
public class Desenvolvedor implements Funcionario {
    
    private double salarioBase = 2500;
    private double salarioCalculado;
    
   Desenvolvedor(){
       calcularSalario();
   }
    
    @Override
    public void calcularSalario() {
        this.salarioCalculado = salarioBase * 1.2;
    }

    @Override
    public String getCargo() {
        return "Desenvolvedor";
    }

    @Override
    public void setSalarioBase(double salarioBase) {
        this.salarioBase = salarioBase;
        calcularSalario();
    }

    @Override
    public double getSalarioBase() {
        return this.salarioBase;
    }

    @Override
    public double getSalarioCalculado() {
        return this.salarioCalculado;
    }
    
   
    
}
