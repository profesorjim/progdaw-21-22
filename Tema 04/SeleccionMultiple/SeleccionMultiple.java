public class SeleccionMultiple {
  /* Este programa es un "mal ejemplo" de selección múltiple
   */
   
  public static void main (String[] args) {
    int x;
    
    System.out.println("Elija una opción:");
    System.out.println("1.- Fruta");
    System.out.println("2.- Pescado");
    System.out.println("3.- Carne:");
    System.out.print("--> ");
    
    x = Integer.parseInt(System.console().readLine());
    
    if (x==1) {
      System.out.println("La manzana es una fruta.");
    } else if (x==2) {
      System.out.println("La trucha es un pez, que puede ser pescado.");
    } else if (x==3) {
      System.out.println("El solomillo es una parte del porcino.");
    } else {
      System.out.println("No has elegido ninguna de las opciones");
    }
    
    
    /*
    if (x==1) {
      System.out.println("La manzana es una fruta.");
    } else  {
      if (x==2) {
        System.out.println("La trucha es un pez, que puede ser pescado.");
      } else {
        if (x==3) {
          System.out.println("El solomillo es una parte del porcino.");
        } else {
          System.out.println("No has elegido ninguna de las opciones");
        }
      }
    } 
    */
    
    
  }
}
