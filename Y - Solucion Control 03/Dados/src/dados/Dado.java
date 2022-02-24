/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dados;

/**
 *
 * @author usuario
 */
public class Dado {
  private int numeroCaras;
  private int valor;
  
  public Dado (int nC) {
    this.numeroCaras = nC;
    this.tirar();
  }
  
  public void tirar () {
    this.valor = (int)(Math.random()*this.numeroCaras) + 1;
  }
  
  public int queHaSalido() {
    return this.valor;
  }
  
  public String toString () {
    return "["+this.valor+"]";
  }
}
