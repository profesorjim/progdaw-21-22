/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package monedas;
import java.util.Scanner;

/**
 *
 * @author usuario
 */
public class Monedas {

  /**
   * @param args the command line arguments
   */
  public static void main(String[] args) {
    // TODO code application logic here
    Moneda [] misMonedas;
    int numMonedas;
   
    
    Scanner s = new Scanner (System.in);
    
    System.out.print("Indique el número de monedas: ");
    numMonedas = s.nextInt();
    s.nextLine();
     
    
    misMonedas = new Moneda[numMonedas];
    
    for (int i=0; i<numMonedas; i++) {
      misMonedas[i] = new Moneda();
    }
    
    System.out.println("\n");
    boolean iguales=true;
    do {
      iguales=true;
      for (int i=0; i<numMonedas; i++) {
        misMonedas[i].tirar();
        System.out.print(misMonedas[i] + " ");        
        if (!(misMonedas[0].queHaSalido().equals(misMonedas[i].queHaSalido()))) {
          iguales = false;
        }
      }
      System.out.println();
    } while (!iguales);    
    
  }
  
}
