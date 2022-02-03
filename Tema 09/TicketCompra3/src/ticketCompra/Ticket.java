/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ticketCompra;

/**
 *
 * @author usuario
 */
public class Ticket {
  private String nombre;
  private LineaTicket [] lineas;
  private int contLineas;
  
  public Ticket (String n) {
    this.nombre = n;
    this.lineas = new LineaTicket[10];
    this.contLineas = 0;
  }
  
  public boolean aniadirLinea (int cantidad, String descripcion, float precioUnidad, int tipoIVA){
    if (this.contLineas<10) {
      this.lineas[contLineas] = new LineaTicket(cantidad,descripcion,precioUnidad,tipoIVA);
        this.contLineas++;
        return true;
    }
    return false;
  }
  
  public int cuentaLineas(){
    return this.contLineas;
  }
  
  public String toString() {
    String resultado;
    float importeTotal = 0.0f;
    
    resultado = "TICKET: "+this.nombre+"\n";
    resultado +="=================\n\n";
    
    resultado += String.format("%s %33s %s %s\n","Cantidad", "Descripción", "Precio","Importe");
    resultado +="-------- --------------------------------- ------ -------\n";
   
    for (int i=0; i<this.contLineas; i++) {
      resultado += "" + this.lineas[i] + "\n";
      importeTotal += this.lineas[i].importe();
    }
    resultado += "---------------------------------------------------------\n";
    resultado += String.format("%-50s %-7.2f\n","TOTAL",importeTotal);
    
    // extraer por bases imponibles
    float parcialSinIVA4 = 0.0f;
    float parcialSinIVA10 = 0.0f;
    float parcialSinIVA21 = 0.0f;
    float impuestoIVA4 = 0.0f;
    float impuestoIVA10 = 0.0f;
    float impuestoIVA21 = 0.0f;
    
    for (int i=0; i<this.contLineas; i++) {
      switch (this.lineas[i].tipoIVA()) {
        case 4: parcialSinIVA4 += this.lineas[i].precioSinIVA();
                impuestoIVA4 += this.lineas[i].impuestoIVA();
                break;
        case 10:parcialSinIVA10 += this.lineas[i].precioSinIVA();
                impuestoIVA10 += this.lineas[i].impuestoIVA();
                break;
        case 21:parcialSinIVA21 += this.lineas[i].precioSinIVA();
                impuestoIVA21 += this.lineas[i].impuestoIVA();
                break;
        default:
      }
    }
    resultado += "IVA           BASE IMPONIBLE      CUOTA\n";
    resultado += String.format("4%%  %23.2f %10.2f\n",parcialSinIVA4,impuestoIVA4);
    resultado += String.format("10%% %23.2f %10.2f\n",parcialSinIVA10,impuestoIVA10);    
    resultado += String.format("21%% %23.2f %10.2f\n",parcialSinIVA21,impuestoIVA21);    
    resultado += String.format("TOTAL %21.2f %10.2f\n",parcialSinIVA4+parcialSinIVA10+parcialSinIVA21,
                                                impuestoIVA4+impuestoIVA10+impuestoIVA21);    
    return resultado;
  }
  
}
