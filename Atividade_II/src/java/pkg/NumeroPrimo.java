package pkg;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Usuario
 */
public class NumeroPrimo {
    
    public static boolean ehPrimo(int x){
        int i, div = 0;
        
        for (i = 1; i <= x; i++){
            if ( x % i == 0){
                div++;
            }
        }
        
        if (div == 2)
            return true;
        else
            return false;
    }
    
}
