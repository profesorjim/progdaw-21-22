/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pedido;
import producto.Producto;

/**
 *
 * @author usuario
 */
public class LineaPedido implements Comparable<LineaPedido>{
  private Producto miProducto;
  private int cantidad;
  
  public LineaPedido(Producto p, int c) {
    this.miProducto = p;
    this.cantidad = c;
  }
  
  public String toTableRow() {
    String resultado = "<tr>";
    resultado +="<td>"+this.miProducto.getNombre()+"</td>";
    resultado +="<td>"+this.miProducto.getPrecio()+"</td>";
    resultado +="<td>"+this.cantidad+"</td>";
    //resultado +="<td>"+(this.cantidad*this.miProducto.getPrecio())+"</td>";
    resultado +="<td>"+this.parcialPVP()+"</td>";
    resultado +="</tr>";
    return resultado;
  }
  
  float parcialPVP() {
    return this.cantidad*this.miProducto.getPrecio();
  }
  
  @Override
  public int compareTo(LineaPedido p) {
    //return this.miProducto.getNombre().compareTo(p.miProducto.getNombre());
    return this.miProducto.compareTo(p.miProducto);
      
  }
  
}

