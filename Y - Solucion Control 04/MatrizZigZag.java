public class MatrizZigZag {
  public static void main (String[] args) {
    int lado;
    int [][] miMatriz;
    
    System.out.print("Introduzca la longitud del lado del array: ");
    lado = Integer.parseInt (System.console().readLine());
    miMatriz = new int[lado][lado];
    
    int contador = 1;
    
    int pasada=0;
    
    for (int i=0; i<lado; i++) {
      if (i%2==0) {
        for (int j=0; j<lado; j++) {
          miMatriz[i][j]=contador;
          contador++;
        }
      } else {
        for (int j=lado-1; j>=0; j--) {
          miMatriz[i][j]=contador;
          contador++;
        }
      }
    }
    
    int longitud=0;
    int aux = lado*lado;
    while (aux>0) {
      longitud++;
      aux = aux/10;
    }
    
    String formato = "%"+longitud+"s ";
    
    System.out.println();
    for (int i=0; i<lado; i++) {
      for (int j=0; j<lado; j++) {
        System.out.printf(formato,miMatriz[i][j]);
      }
      System.out.println();
    }
    
  }
}
