package restaurante;

import receta.Receta;
import ingrediente.Articulo;
import ingrediente.Ingrediente;

public class Restaurante {
  private String nombre;
  private Articulo[] almacen;
  private int numAlmacen;
  
  public Restaurante (String nombre, int capacidadIngredientes) {
    this.nombre = nombre;
    this.almacen = new Articulo[capacidadIngredientes];
    this.numAlmacen = 0;
  }
  
  public boolean provisionArticulo (Articulo i) {
    if (this.numAlmacen < this.almacen.length) {
      this.almacen[numAlmacen]=i;
      this.numAlmacen++;
      return true;
    }
    return false;
  }
  
  public boolean cocinaReceta(Receta c) {
    boolean cantidadesSuficientes = true;
    for (int i=0; i<c.dimeNumeroIngredientes() && cantidadesSuficientes; i++) {
      cantidadesSuficientes=false;
      Ingrediente auxiliar = c.dameIngrediente(i);
      for (int j=0; j<this.numAlmacen && !cantidadesSuficientes; j++) {
        if (this.almacen[j].dimeNombre().equals(auxiliar.dimeNombre()) && this.almacen[j].stock()>=auxiliar.dimeCantidad()) {
          cantidadesSuficientes=true;
        }
         
      }
    }
    if (cantidadesSuficientes) {
      for (int i=0; i<c.dimeNumeroIngredientes(); i++) {
        Ingrediente auxiliar = c.dameIngrediente(i);
        for (int j=0; j<this.numAlmacen; j++) {
          if (this.almacen[j].dimeNombre().equals(auxiliar.dimeNombre()) && this.almacen[j].stock()>=auxiliar.dimeCantidad()) {
            this.almacen[j].gasta(auxiliar.dimeCantidad());
          }
        }
      }
      return true;
    }
    return false;
    
  }
  
  public String listadoAlmacen() {
    String resultado;
    resultado="Listado de artículos del almacén del restaurante \""+this.nombre+"\":\n";
    for (int i=0; i<this.numAlmacen; i++) {
      resultado += "- "+this.almacen[i]+"\n";
    }
    
    return resultado;
  }
  
}
