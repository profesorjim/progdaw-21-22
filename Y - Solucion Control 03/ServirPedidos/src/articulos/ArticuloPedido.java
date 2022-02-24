package articulos;

public class ArticuloPedido extends ArticuloBase {
  public ArticuloPedido (String nombre, int cantidad) {
    super(nombre, cantidad);
  }
  
  public int dimeCantidad () {
    return super.dimeCantidad();
  }
}
