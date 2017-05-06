
package loianeGroner.aula021;
import java.util.Random;
import java.util.Scanner;

public class Java21 {
    
   public static void main(String[] args){
       
       Random random = new Random();
       Scanner scan = new Scanner(System.in);
       int vetor[] = new int[10];
       
       for(int i = 0; i < vetor.length; i++){
           //System.out.print("Informe um valor: ");
           //vetor[i] = scan.nextInt();
           vetor[i] = random.nextInt(vetor.length);
       }
       /*
       for(int i = 0; i < vetor.length; i++)
           System.out.println(vetor[i]);
       */
       for (int vet: vetor)
           System.out.println(vetor[vet]);
        
   }
   
}
