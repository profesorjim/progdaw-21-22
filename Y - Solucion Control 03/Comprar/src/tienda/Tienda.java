package tienda;

import listaCompra.ListaCompra;
import articulos.ArticuloTienda;
import articulos.ArticuloLista;

public class Tienda {
  private String nombre;
  private ArticuloTienda[] almacen;
  private int numAlmacen;
  
  public Tienda (String nombre, int capacidadArticulos) {
    this.nombre = nombre;
    this.almacen = new ArticuloTienda[capacidadArticulos];
    this.numAlmacen = 0;
  }
  
  public boolean provisionArticulo (ArticuloTienda i) {
    if (this.numAlmacen < this.almacen.length) {
      this.almacen[numAlmacen]=i;
      this.numAlmacen++;
      return true;
    }
    return false;
  }
  
  public boolean vender(ListaCompra c) {
    boolean cantidadesSuficientes = true;
    for (int i=0; i<c.dimeNumeroArticulos() && cantidadesSuficientes; i++) {
      cantidadesSuficientes=false;
      ArticuloLista auxiliar = c.dameArticulo(i);
      for (int j=0; j<this.numAlmacen && !cantidadesSuficientes; j++) {
        if (this.almacen[j].dimeNombre().equals(auxiliar.dimeNombre()) && this.almacen[j].stock()>=auxiliar.dimeCantidad()) {
          cantidadesSuficientes=true;
        }
         
      }
    }
    if (cantidadesSuficientes) {
      for (int i=0; i<c.dimeNumeroArticulos(); i++) {
        ArticuloLista auxiliar = c.dameArticulo(i);
        for (int j=0; j<this.numAlmacen; j++) {
          if (this.almacen[j].dimeNombre().equals(auxiliar.dimeNombre()) && this.almacen[j].stock()>=auxiliar.dimeCantidad()) {
            this.almacen[j].descuenta(auxiliar.dimeCantidad());
          }
        }
      }
      return true;
    }
    return false;
    
  }
  
  public String listadoAlmacen() {
    String resultado;
    resultado="Listado de artículos del almacén de la tienda \""+this.nombre+"\":\n";
    for (int i=0; i<this.numAlmacen; i++) {
      resultado += "- "+this.almacen[i]+"\n";
    }
    
    return resultado;
  }
  
}
