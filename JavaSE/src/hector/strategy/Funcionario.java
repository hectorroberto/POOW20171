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
public interface Funcionario {
    public void calcularSalario();
    public double getSalarioCalculado();
    public String getCargo();
    public void setSalarioBase(double salarioBase);
    public double getSalarioBase();
}
