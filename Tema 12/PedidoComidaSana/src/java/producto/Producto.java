package producto;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author usuario
 */
public class Producto {
  private String nombre;
  private float precio;
  private String tipo;
  private String imagen;
  private String rutaImagen;
  
  public Producto(String n, float p, String t, String i, String ri) {
    this.nombre=n;
    this.precio = p;
    this.tipo = t;
    this.imagen = i;
    this.rutaImagen = ri;    
  }
  
  public String getNombre() {
    return this.nombre;
  }
  
  public float getPrecio() {
    return this.precio;
  }
  
  public String getTipo() {
    return this.tipo;
  }
  
  public String toIMG() {
    return "<img src=\""+this.rutaImagen+"/" +this.imagen+"\">";
  }
  
}
