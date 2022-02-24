/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cocinar;

import restaurante.Restaurante;
import ingrediente.Articulo;
import receta.Receta;
import ingrediente.Ingrediente;

/**
 *
 * @author usuario
 */
public class Cocinar {

  /**
   * @param args the command line arguments
   */
  public static void main(String[] args) {
    // TODO code application logic here
    Restaurante miRestaurante = new Restaurante ("La cocina del programador",100);
    
    miRestaurante.provisionArticulo(new Articulo("Huevo",12));
    miRestaurante.provisionArticulo(new Articulo("Patata",20));
    miRestaurante.provisionArticulo(new Articulo("Aceite",1000));
    miRestaurante.provisionArticulo(new Articulo("Tomate",20));
    
    Receta miReceta = new Receta("Tortilla de patatas",3);
    miReceta.escribirReceta("Freir patatas, batir huevo, mezclar, cuajar.");
    
    miReceta.aniadirIngrediente(new Ingrediente("Huevo",2));
    miReceta.aniadirIngrediente(new Ingrediente("Patata",3));
    miReceta.aniadirIngrediente(new Ingrediente("Aceite",50));
    
    System.out.println(miRestaurante.listadoAlmacen());
    System.out.println(miReceta);
    System.out.println("Después de cocinar la receta ...");
    miRestaurante.cocinaReceta(miReceta);
    System.out.println(miRestaurante.listadoAlmacen());
  }
  
}
