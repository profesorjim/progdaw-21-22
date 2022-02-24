package articulos;

public class ArticuloLista extends ArticuloBase {
  public ArticuloLista (String nombre, int cantidad) {
    super(nombre, cantidad);
  }
  
  public int dimeCantidad () {
    return super.dimeCantidad();
  }
}
