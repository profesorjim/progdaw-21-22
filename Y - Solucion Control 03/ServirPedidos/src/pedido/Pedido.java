package pedido;

import articulos.ArticuloPedido;

public class Pedido {
  private String nombre;
  private ArticuloPedido [] articulos;
  private int numArticulos;
  private String comentario;
  
  public Pedido (String nombre, int cantidadArticulos) {
    this.nombre = nombre;
    this.articulos = new ArticuloPedido[cantidadArticulos];
    this.numArticulos = 0;
  }
  
  public void escribirObservaciones(String s) {
    this.comentario = s;
  }
  
  public boolean aniadirArticulo (ArticuloPedido i) {
    if (this.numArticulos <this.articulos.length)  {
      this.articulos[numArticulos] = i;
      this.numArticulos++;
      return true;
    }
    return false;
  }
  
  public String toString() {
    String res;
    res = "Pedido: "+this.nombre+"\n";
    res += "--------------------\n";
    res += "* Artículos:\n";
    for (int i=0; i<this.numArticulos; i++) {
      res += "- "+this.articulos[i]+"\n";
    }
    res += "* Observaciones: "+this.comentario +"\n";
    
    return res;
  }
  
  public int dimeNumeroArticulos() {
    return this.numArticulos;
  }
  
  public ArticuloPedido dameArticulo (int i) {
    if (i>=0 && i<this.numArticulos) {
      return this.articulos[i];
    }
    return null;
  }
}
