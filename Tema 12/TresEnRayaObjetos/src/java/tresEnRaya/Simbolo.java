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
public class Simbolo {
  private String nombre;
  
  public Simbolo (String n) {
    this.nombre = n;
  }
  
  public String toHtmlImg () {
    return "<img src=\"imagenes/"+this.nombre+".png\">";
  }
  
  public String getNombre() {
    return this.nombre;
  }
}
