package listaCompra;

import articulos.ArticuloLista;

public class ListaCompra {
  private String nombre;
  private ArticuloLista [] articulos;
  private int numArticulos;
  private String comentario;
  
  public ListaCompra (String nombre, int cantidadArticulos) {
    this.nombre = nombre;
    this.articulos = new ArticuloLista[cantidadArticulos];
    this.numArticulos = 0;
  }
  
  public void escribirComentario(String s) {
    this.comentario = s;
  }
  
  public boolean aniadirArticulo (ArticuloLista i) {
    if (this.numArticulos <this.articulos.length)  {
      this.articulos[numArticulos] = i;
      this.numArticulos++;
      return true;
    }
    return false;
  }
  
  public String toString() {
    String res;
    res = "Lista: "+this.nombre+"\n";
    res += "--------------------\n";
    res += "* Artículos:\n";
    for (int i=0; i<this.numArticulos; i++) {
      res += "- "+this.articulos[i]+"\n";
    }
    res += "* Comentario: "+this.comentario +"\n";
    
    return res;
  }
  
  public int dimeNumeroArticulos() {
    return this.numArticulos;
  }
  
  public ArticuloLista dameArticulo (int i) {
    if (i>=0 && i<this.numArticulos) {
      return this.articulos[i];
    }
    return null;
  }
}
