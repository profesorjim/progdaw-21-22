/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package monedas;

/**
 *
 * @author usuario
 */
public class Moneda {
  private String valor;
  
  public Moneda () {
    this.tirar();
  }
  
  public void tirar () {
    int aux = (int)(Math.random()*2) ;
    if (aux ==0) {
      this.valor ="C";
    } else {
      this.valor = "X";
    }
  }
  
  public String queHaSalido() {
    return this.valor;
  }
  
  public String toString () {
    return "["+this.valor+"]";
  }
}
