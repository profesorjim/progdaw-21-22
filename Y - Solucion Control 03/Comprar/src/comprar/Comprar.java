/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package comprar;

import tienda.Tienda;
import articulos.ArticuloTienda;
import listaCompra.ListaCompra;
import articulos.ArticuloLista;

/**
 *
 * @author usuario
 */
public class Comprar {

  /**
   * @param args the command line arguments
   */
  public static void main(String[] args) {
    // TODO code application logic here
    Tienda miTienda = new Tienda ("Programadona",100);
    
    miTienda.provisionArticulo(new ArticuloTienda("Huevo",12));
    miTienda.provisionArticulo(new ArticuloTienda("Patata",20));
    miTienda.provisionArticulo(new ArticuloTienda("Aceite",1000));
    miTienda.provisionArticulo(new ArticuloTienda("Tomate",20));
    
    ListaCompra miListaDeLaCompra = new ListaCompra("Lista de la compra de última hora",3);
    miListaDeLaCompra.escribirComentario("Que los productos sean los más frescos. URGE.");
    
    miListaDeLaCompra.aniadirArticulo(new ArticuloLista("Huevo",2));
    miListaDeLaCompra.aniadirArticulo(new ArticuloLista("Patata",3));
    miListaDeLaCompra.aniadirArticulo(new ArticuloLista("Aceite",50));
    
    System.out.println(miTienda.listadoAlmacen());
    System.out.println(miListaDeLaCompra);
    System.out.println("Después de vender los artículos de la lista de la compra ...");
    miTienda.vender(miListaDeLaCompra);
    System.out.println(miTienda.listadoAlmacen());
  }
  
}
