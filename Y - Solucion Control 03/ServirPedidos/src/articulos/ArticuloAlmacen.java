package articulos;

public class ArticuloAlmacen extends ArticuloBase {
  public ArticuloAlmacen (String nombre, int stock) {
    super(nombre,stock);
  }
  
  public boolean descuenta (int cantidad) {
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
