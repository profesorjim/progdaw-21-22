package receta;

import ingrediente.Ingrediente;

public class Receta {
  private String nombre;
  private Ingrediente [] ingredientes;
  private int numIngredientes;
  private String instrucciones;
  
  public Receta (String nombre, int cantidadIngredientes) {
    this.nombre = nombre;
    this.ingredientes = new Ingrediente[cantidadIngredientes];
    this.numIngredientes = 0;
  }
  
  public void escribirReceta(String s) {
    this.instrucciones = s;
  }
  
  public boolean aniadirIngrediente (Ingrediente i) {
    if (this.numIngredientes <this.ingredientes.length)  {
      this.ingredientes[numIngredientes] = i;
      this.numIngredientes++;
      return true;
    }
    return false;
  }
  
  public String toString() {
    String res;
    res = "Receta: "+this.nombre+"\n";
    res += "--------------------\n";
    res += "* Ingredientes:\n";
    for (int i=0; i<this.numIngredientes; i++) {
      res += "- "+this.ingredientes[i]+"\n";
    }
    res += "* Instrucciones: "+this.instrucciones +"\n";
    
    return res;
  }
  
  public int dimeNumeroIngredientes() {
    return this.numIngredientes;
  }
  
  public Ingrediente dameIngrediente (int i) {
    if (i>=0 && i<this.numIngredientes) {
      return this.ingredientes[i];
    }
    return null;
  }
}
