/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ticketcompra;

/**
 *
 * @author usuario
 */
public class LineaTicket {
  private int cantidad;
  private String descripcion;
  private float precioUnidad;
  private int IVA;
  
  public LineaTicket(int c, String d, float p, int i) {
    this.cantidad =c;
    this.descripcion = d;
    this.precioUnidad = p;
    this.IVA = i;    
  }
  
  public String toString () {
    String resultado;
    resultado = String.format("%8d %33s %6.2f %7.2f",this.cantidad, this.descripcion, this.precioUnidad,this.cantidad*this.precioUnidad);
    return resultado;
  }
  
  public float precioSinIVA () {
    return (this.cantidad*this.precioUnidad)/((100+this.IVA)/100.0f);
  }
    
  public float impuestoIVA () {
    return this.cantidad*this.precioUnidad - this.precioSinIVA();
  }
  
  public float importe () {
    return this.cantidad*this.precioUnidad;
  }
  
  public int tipoIVA () {
    return this.IVA;
  }
}
