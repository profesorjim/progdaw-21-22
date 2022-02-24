/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dados;
import java.util.Scanner;

/**
 *
 * @author usuario
 */
public class Dados {

  /**
   * @param args the command line arguments
   */
  public static void main(String[] args) {
    // TODO code application logic here
    Dado [] misDados;
    int numDados;
    int numCaras;
    
    Scanner s = new Scanner (System.in);
    
    System.out.print("Indique el número de dados: ");
    numDados = s.nextInt();
    s.nextLine();
    
    System.out.print("Indique el número de caras: ");
    numCaras = s.nextInt();
    s.nextLine();  
    
    misDados = new Dado[numDados];
    
    for (int i=0; i<numDados; i++) {
      misDados[i] = new Dado(numCaras);
    }
    
    System.out.println("\n");
    boolean iguales=true;
    do {
      iguales=true;
      for (int i=0; i<numDados; i++) {
        misDados[i].tirar();
        System.out.print(misDados[i] + " ");        
        if (misDados[0].queHaSalido()!=misDados[i].queHaSalido()) {
          iguales = false;
        }
      }
      System.out.println();
    } while (!iguales);    
    
  }
  
}
