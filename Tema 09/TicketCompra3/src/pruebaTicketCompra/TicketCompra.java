/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pruebaTicketCompra;
import ticketCompra.Ticket;
import java.util.Scanner;

/**
 *
 * @author usuario
 */
public class TicketCompra {

  /**
   * @param args the command line arguments
   */
  public static void main(String[] args) {
    // TODO code application logic here
    Scanner s = new Scanner (System.in);
    
    Ticket miTicket = new Ticket("Compra de la semana");
    
    boolean salir=false;
    
    // rellenar el ticket
    do {
      salir = false;
      String descripcion;
      System.out.print("Introduzca nombre artículo (\"fin\" para salir): ");
      descripcion = s.nextLine();
      if (descripcion.equals("fin")) {
        salir = true;
      }
      if (!salir) {
        int cantidad;
        float precioUnidad;
        int tipoIVA;
        
        System.out.print("Introduzca la cantidad: ");
        cantidad = s.nextInt();
        s.nextLine();
        System.out.print("Introduzca el precio por unidad: ");
        precioUnidad = s.nextFloat();
        s.nextLine();
        do {
          System.out.print("Introduzca el tipo de IVA (4, 10 o 21 %): ");
          tipoIVA = s.nextInt();
          s.nextLine();
          if (!((tipoIVA==4) || (tipoIVA==10) || (tipoIVA==21))){
            System.out.print("Incorrecto. ");
          }
        } while (!((tipoIVA==4) || (tipoIVA==10) || (tipoIVA==21)));
        miTicket.aniadirLinea(cantidad,descripcion,precioUnidad,tipoIVA);
        
        if (miTicket.cuentaLineas()>=10) {
          salir = true;
        }
      }
    } while (!salir);
    
    // presentar el ticket
    
    System.out.println(miTicket);
  }
  
}

