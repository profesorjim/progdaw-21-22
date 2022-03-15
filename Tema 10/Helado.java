

public class Helado {
  private String sabor;
  private int cantidad;
  private boolean azucar;
  private boolean gluten;
  private boolean vegano;
  private static String conservante="Conservante1";
  private static int totalHelados = 0;
  
  public Helado () {
    this("chocolate",10);
  }
  
  public Helado (String sabor, int cantidad) {
    this.sabor = sabor;
    this.cantidad = cantidad;
    
    this.azucar = true;
    this.gluten = true;
    this.vegano = false;  
    
    totalHelados++;
  }
  
  public Helado (String sabor, int cantidad, String a, String g, String v) {
    this(sabor,cantidad);    
    if (a.equals("azucar")) {
      this.azucar = true;
    } else {
      this.azucar = false;
    }
    if (g.equals("singluten")) {
      this.gluten = false;
    } else {
      this.gluten = true;    
    }
    if (v.equals("vegano")) {
      this.vegano = true;
    } else {
      this.vegano = false;    
    }
  }
  
  public boolean chupar () {
    if (this.cantidad > 0) {
      this.cantidad--;
      return true;
    }
    return false;
  }
  
  public boolean chupar (int c) {
    if (this.cantidad-c >= 0) {
      this.cantidad = this.cantidad-c;
      return true;
    }
    return false;
  }
  
  public int cuantoQueda() {
    return this.cantidad;
  }
  
  public String toString() {
    String resultado = "";
    resultado = "--------------\n";
    resultado = resultado + "Sabor: "+this.sabor+"\n";
    resultado = resultado + "Cantidad: "+this.cantidad;
    if (!this.azucar) {
      resultado = resultado + "\nSin Azucar. ";
    }
    if (!this.gluten) {
      resultado = resultado + "\nSin Gluten. ";
    }
    if (this.vegano) {
      resultado = resultado + "\nVegano. ";
    }
    resultado = resultado + "\n##############\n";
    
    return resultado;
  }
  
  public int compara (Helado h) {
    if (this.cantidad == h.cantidad) {
      return 0;
    }
    if (this.cantidad < h.cantidad) {
      return -1;
    }
    return 1;
  }
  
  public static int heladosCreados() {
    return totalHelados;
  }
  
  public static void fijarConservante (String c) {
    conservante = c;
  }
  
  /*
  public void ponerSabor (String saborNuevo) {
    this.sabor = saborNuevo;
  }
  
  public void ponerSabor (int x) {
    switch (x) {
      case 1:
        this.sabor = "manzana";
        break;
      case 2:
        this.sabor = "melocotón";
        break;
      default:
        this.sabor = "vainilla";
    }
  }
  */
  
}
