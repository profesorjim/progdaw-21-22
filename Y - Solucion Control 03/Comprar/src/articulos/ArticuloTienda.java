package articulos;

public class ArticuloTienda extends ArticuloBase {
  public ArticuloTienda (String nombre, int stock) {
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
