/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servirPedidos;

import distribuidora.Distribuidora;
import articulos.ArticuloAlmacen;
import pedido.Pedido;
import articulos.ArticuloPedido;

/**
 *
 * @author usuario
 */
public class ServirPedidos {

  /**
   * @param args the command line arguments
   */
  public static void main(String[] args) {
    // TODO code application logic here
    Distribuidora miDistribuidora = new Distribuidora ("PROGRAMAZON",100);
    
    miDistribuidora.provisionArticulo(new ArticuloAlmacen("Teclado",200));
    miDistribuidora.provisionArticulo(new ArticuloAlmacen("Ratón",25));
    miDistribuidora.provisionArticulo(new ArticuloAlmacen("Impresora",1000));
    miDistribuidora.provisionArticulo(new ArticuloAlmacen("CPU",187));
    
    Pedido miPedido = new Pedido("Pedido de material para IES Campanillas",3);
    miPedido.escribirObservaciones("Entréguese en horario de 8:15 a 14:45");
    
    miPedido.aniadirArticulo(new ArticuloPedido("Teclado",3));
    miPedido.aniadirArticulo(new ArticuloPedido("Ratón",4));
    miPedido.aniadirArticulo(new ArticuloPedido("CPU",2));
    
    System.out.println(miDistribuidora.listadoAlmacen());
    System.out.println(miPedido);
    System.out.println("Después de atender el pedido ...");
    miDistribuidora.servir(miPedido);
    System.out.println(miDistribuidora.listadoAlmacen());
  }
  
}
