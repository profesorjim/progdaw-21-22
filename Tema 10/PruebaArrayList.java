import java.util.ArrayList;

public class PruebaArrayList {
  public static void main (String[] args) {
    int vector [] = new int[10];
    
    ArrayList<Integer> vectorDinamico = new ArrayList<Integer>();
    ArrayList<Helado> misHelados = new ArrayList<Helado>();
    
    for (int i=0; i<8; i++) {
      vectorDinamico.add((int)(Math.random()*5));
    }
    
    for (int i=0; i<vectorDinamico.size(); i++) {
      System.out.print(vectorDinamico.get(i)+ " ");
    }
    
    vectorDinamico.remove(3);
    
    System.out.println();
    for (int i=0; i<vectorDinamico.size(); i++) {
      System.out.print(vectorDinamico.get(i) + " ");
    }
    
    vectorDinamico.add(3,9);
    System.out.println();
    for (int i=0; i<vectorDinamico.size(); i++) {
      System.out.print(vectorDinamico.get(i) + " ");
    }
    
    misHelados.add(new Helado("vainilla",200));
    misHelados.add(new Helado());
    misHelados.add(new Helado("turrón",300));
    
    System.out.println();
    for (int i=0; i<misHelados.size(); i++) {
      System.out.print(misHelados.get(i) + " ");
    }
  }
}
