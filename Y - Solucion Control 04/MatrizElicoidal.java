public class MatrizElicoidal {
  public static void main (String[] args) {
    int lado;
    int [][] miMatriz;
    
    System.out.print("Introduzca la longitud del lado del array: ");
    lado = Integer.parseInt (System.console().readLine());
    miMatriz = new int[lado][lado];
    
    int contador = 1;
    
    int pasada=0;
    miMatriz[0][0]=1;
    while (contador<lado*lado) {
      for (int j=pasada; j<lado-pasada; j++) {
        miMatriz[pasada][j] = contador;
        contador++;
      }
      for (int i=pasada+1; i<lado-pasada; i++) {
        miMatriz[i][lado-pasada-1] = contador;
        contador++;
      }
      for (int j=lado-pasada-2; j>=pasada; j--) {
        miMatriz[lado-pasada-1][j] = contador;
        contador++;
      }
      for (int i=lado-pasada-2; i>pasada; i--) {
        miMatriz[i][pasada] = contador;
        contador++;
      }
      pasada++;
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
