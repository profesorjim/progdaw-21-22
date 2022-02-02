/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ticketcompra;
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
    
    LineaTicket [] ticket = new LineaTicket[10];
    int contLineas = 0;
    float importeTotal= 0.0f;
    
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
        ticket[contLineas] = new LineaTicket(cantidad,descripcion,precioUnidad,tipoIVA);
        contLineas++;
        if (contLineas>=10) {
          salir = true;
        }
      }
    } while (!salir);
    
    // presentar lineas ticket
    
    System.out.printf("%s %33s %s %s\n","Cantidad", "Descripción", "Precio","Importe");
    System.out.println("-------- --------------------------------- ------ -------");
   
    for (int i=0; i<contLineas; i++) {
      System.out.println(ticket[i]);
      importeTotal += ticket[i].importe();
    }
    System.out.println("---------------------------------------------------------");
    System.out.printf("%-50s %-7.2f\n","TOTAL",importeTotal);
    
    // extraer por bases imponibles
    float parcialSinIVA4 = 0.0f;
    float parcialSinIVA10 = 0.0f;
    float parcialSinIVA21 = 0.0f;
    float impuestoIVA4 = 0.0f;
    float impuestoIVA10 = 0.0f;
    float impuestoIVA21 = 0.0f;
    
    for (int i=0; i<contLineas; i++) {
      switch (ticket[i].tipoIVA()) {
        case 4: parcialSinIVA4 += ticket[i].precioSinIVA();
                impuestoIVA4 += ticket[i].impuestoIVA();
                break;
        case 10:parcialSinIVA10 += ticket[i].precioSinIVA();
                impuestoIVA10 += ticket[i].impuestoIVA();
                break;
        case 21:parcialSinIVA21 += ticket[i].precioSinIVA();
                impuestoIVA21 += ticket[i].impuestoIVA();
                break;
        default:
      }
    }
    System.out.println("IVA           BASE IMPONIBLE      CUOTA");
    System.out.printf("4%%  %23.2f %10.2f\n",parcialSinIVA4,impuestoIVA4);
    System.out.printf("10%% %23.2f %10.2f\n",parcialSinIVA10,impuestoIVA10);    
    System.out.printf("21%% %23.2f %10.2f\n",parcialSinIVA21,impuestoIVA21);    
    System.out.printf("TOTAL %21.2f %10.2f\n",parcialSinIVA4+parcialSinIVA10+parcialSinIVA21,
                                                impuestoIVA4+impuestoIVA10+impuestoIVA21);    
  }
  
}

