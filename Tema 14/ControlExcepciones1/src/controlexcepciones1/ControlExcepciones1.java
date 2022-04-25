/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlexcepciones1;
import java.util.Scanner;

/**
 *
 * @author usuario
 */
public class ControlExcepciones1 {

  /**
   * @param args the command line arguments
   */
  public static void main(String[] args) {
    // TODO code application logic here
    int dividendo;
    int divisor;
    int cociente;
    
    
    Scanner s = new Scanner(System.in);
    
    System.out.println("Programa que hace divisiones.");
    System.out.print("Indique dividendo: ");
    try {
      dividendo = s.nextInt();
    } catch (Exception e) {
      System.out.println("Valor introducido incorrecto. Tomando valor por defecto: 0");
      dividendo = 0;
    } finally {}
    s.nextLine();
    
    System.out.print("Indique divisor: ");
    
    try {
      divisor = s.nextInt();
    } catch (Exception e) {
      System.out.println("Valor introducido incorrecto. Tomando valor por defecto: 1");
      divisor = 1;
    } finally {}
    
    s.nextLine();
    
    try {    
      cociente = dividendo / divisor;
      System.out.println("El cociente es: "+cociente);
    } catch (Exception e) {
      System.out.println("División por cero.");
    } finally {
      
    }
    
    
    
  }
  
}
