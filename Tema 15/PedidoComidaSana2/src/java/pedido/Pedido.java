/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pedido;
import java.util.ArrayList;
import producto.Producto;
import java.util.Collections;
/**
 *
 * @author usuario
 */
public class Pedido {
  private ArrayList<LineaPedido> miPedido;
  
  public Pedido() {
    this.miPedido = new ArrayList<LineaPedido>();
  }
  
  public void aniadirProducto(Producto p, int c) {
    LineaPedido lp = new LineaPedido(p,c);
    this.miPedido.add(lp);
  }
  
  public String toHTML() {
    String resultado="";
    Collections.sort(this.miPedido);
    float total = 0.0f;
    resultado = "<table><tr><th>Comida/bebida</th><th>PVP</th><th>Cantidad</th><th>Subtotal</th></tr>";
    for (int i=0; i<this.miPedido.size(); i++) {
      resultado +=this.miPedido.get(i).toTableRow();
      total += this.miPedido.get(i).parcialPVP();
    }
    
    resultado +="</table><br>";
    resultado +="<b>Total "+total+" €</b>";
    return resultado;
  }
  
}
