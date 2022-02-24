package ingrediente;

public class Articulo extends IngredienteBase {
  public Articulo (String nombre, int stock) {
    super(nombre,stock);
  }
  
  public boolean gasta (int cantidad) {
    if (super.dimeCantidad() >= cantidad) {
      super.fijaCantidad(super.dimeCantidad()-cantidad);
      return true;
    }
    return false;
  }
  
  public int stock () {
    return super.dimeCantidad();
  }
}
