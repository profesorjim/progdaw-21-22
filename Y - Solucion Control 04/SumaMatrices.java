public class SumaMatrices {
  public static void main (String[] args) {
    int f1,c1,f2,c2;
    int [][] m1;
    int [][] m2;
    int [][] res;
    
    System.out.print("Indique cantidad de filas matriz 1: ");
    f1 = Integer.parseInt(System.console().readLine());
    System.out.print("Indique cantidad de columnas matriz 1: ");
    c1 = Integer.parseInt(System.console().readLine());
    
    System.out.print("Indique cantidad de filas matriz 2: ");
    f2 = Integer.parseInt(System.console().readLine());
    System.out.print("Indique cantidad de columnas matriz 2: ");
    c2 = Integer.parseInt(System.console().readLine());
    
    m1 = new int [f1][c1];
    m2 = new int [f2][c2];
    
    for (int i=0; i<f1; i++) {
      for (int j=0; j<c1; j++) {
        m1 [i][j] = (int)(Math.random()*(83-7+1)+7);
      }
    }
    
    for (int i=0; i<f2; i++) {
      for (int j=0; j<c2; j++) {
        m2 [i][j] = (int)(Math.random()*(83-7+1)+7);
      }
    }
    
    res = SumarMatrices(m1,m2);
    
    System.out.println("Primera matriz:");
    MostrarMatriz(m1);
    System.out.println("Segunda matriz:");
    MostrarMatriz(m2);
    System.out.println("Matriz suma:");
    MostrarMatriz(res);
    
  }
  
  public static int [][] SumarMatrices(int[][]a, int[][]b) {
    int f = a.length>b.length?b.length:a.length;
    int c = a[0].length>b[0].length?b[0].length:a[0].length;
    int [][] r = new int[f][c];
    for (int i=0; i<f; i++) {
      for (int j=0; j<c; j++) {
        r[i][j] = a[i][j]+b[i][j];
      }
    }
    return r;
  }
  
  public static void MostrarMatriz(int[][]m) {
    for (int i=0; i<m.length; i++) {
      for (int j=0; j<m[0].length; j++) {
        System.out.printf("%3d ",m[i][j]);
      }
      System.out.println();
    }
  }
  
}
