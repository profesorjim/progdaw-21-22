import java.util.ArrayList;

public class PruebaArrayListBidim {
  public static void main (String[] args) {
    ArrayList<ArrayList<Integer>> arrayBid = new ArrayList<ArrayList<Integer>>();
    // simular matriz bidimensional de 10*12
    for (int i=0; i<10; i++) {
      arrayBid.add(new ArrayList<Integer>());
    }
    for (int i=0; i<10; i++) {
      for (int j=0; j<12; j++) {
        arrayBid.get(i).add(i*j);
      }
    }
    
    for (int i=0; i<10; i++) {
      for (int j=0; j<12; j++) {
        System.out.printf("%3d ",arrayBid.get(i).get(j));
      }
      System.out.println();
    }    
  }
}
