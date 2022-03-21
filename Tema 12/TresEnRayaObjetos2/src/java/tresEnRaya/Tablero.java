/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tresEnRaya;

/**
 *
 * @author usuario
 */
public class Tablero {
  private Simbolo casillas [][];
  
  public Tablero() {
    this.casillas = new Simbolo[3][3];
    
    for (int i=0; i<3; i++) {
      for (int j=0; j<3; j++) {
        this.casillas [i][j] = new Simbolo("vacio");
      }
    }
  }
  public void Rellenar() {
      int circulos = 0;
      do {
        int i = (int) (Math.random() * 3);
        int j = (int) (Math.random() * 3);
        if (this.casillas[i][j].getNombre().equals("vacio")) {
          this.casillas[i][j] = new Simbolo("circulo");
          circulos++;
        }
      } while (circulos < 3);
      int cruces = 0;
      do {
        int i = (int) (Math.random() * 3);
        int j = (int) (Math.random() * 3);
        if (this.casillas[i][j].getNombre().equals("vacio")) {
          this.casillas[i][j] = new Simbolo("cruz");
          cruces++;
        }
      } while (cruces < 3);
  }
  /*
  public Simbolo getCasilla(int i, int j) {
    return this.casillas[i][j];
  } 
  */
  public String toHtmlTable () {
    String resultado = "<table>";
    for (int i = 0; i < 3; i++) {
      resultado += "<tr>\n";
        for (int j = 0; j < 3; j++) {
          resultado +="<td>"+this.casillas[i][j].toHtmlImg()+"</td>\n"; 
        }
        
    }
    return resultado;
  }
}
