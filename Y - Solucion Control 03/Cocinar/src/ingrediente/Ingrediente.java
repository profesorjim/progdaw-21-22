package ingrediente;

public class Ingrediente extends IngredienteBase {
  public Ingrediente (String nombre, int cantidad) {
    super(nombre, cantidad);
  }
  
  public int dimeCantidad () {
    return super.dimeCantidad();
  }
}
