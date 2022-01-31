/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fichaDomino;

/**
 *
 * @author usuario
 */
public class FichaDomino {

  private int num1;
  private int num2;

  public FichaDomino(int a, int b) {
    this.num1 = a;
    this.num2 = b;
  }

  public FichaDomino voltea() {
    return new FichaDomino(this.num2, this.num1);
  }

  public boolean encaja(FichaDomino f) {
    if (this.num2 == f.num1) {
      return true;
    }
    if (this.num2 == f.num2) {
      return true;
    }
    if (this.num1 == f.num1) {
      return true;
    }
    if (this.num1 == f.num2) {
      return true;
    }
    return false;
  }

  @Override
  public String toString () {
    return "["+(this.num1==0?" ":this.num1)+"|"+(this.num2==0?" ":this.num2)+"]";
  }

}
