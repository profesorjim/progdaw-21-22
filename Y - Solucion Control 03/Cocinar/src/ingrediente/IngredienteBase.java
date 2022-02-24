package ingrediente;

public abstract class IngredienteBase {
  private String nombre;
  private int cantidad;
  
  public IngredienteBase (String nombre, int cantidad) {
    this.nombre = nombre;
    this.cantidad = cantidad;
  }
  
  protected int dimeCantidad () {
    return this.cantidad;
  }
  
  public String dimeNombre() {
    return this.nombre;
  }
  
  public String toString () {
    return this.nombre + " -> Cantidad: " + this.cantidad;
  }
  
  protected void fijaCantidad(int c) {
    this.cantidad = c;
  }  
}
