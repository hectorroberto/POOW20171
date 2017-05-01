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
public class Gerente implements Funcionario{
    private double salarioBase = 4000;
    private double salarioCalculado;
    
   Gerente(){
       calcularSalario();
   }
    
    @Override
    public void calcularSalario() {
        this.salarioCalculado = salarioBase * 1.1;
    }

    @Override
    public String getCargo() {
        return "Gerente";
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

    @Override
    public String toString() {
        return "Gerente{" + "salarioBase=" + salarioBase + ", salarioCalculado=" + salarioCalculado + '}';
    }
    
    
       
}
