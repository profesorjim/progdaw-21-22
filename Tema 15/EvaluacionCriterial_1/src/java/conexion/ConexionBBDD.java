package conexion;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 
/**
 *
 * @author usuario
 */

import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.SQLException;

public class ConexionBBDD {
  private Statement s;
  private Connection conexion;
  
  public ConexionBBDD () throws ClassNotFoundException, SQLException {
    Class.forName("com.mysql.jdbc.Driver");
    this.conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/EvalCrit","admin", "admin");
    this.s = conexion.createStatement();
  }
  
  public ResultSet consultaDatos (String s) throws SQLException {
    return this.s.executeQuery(s);
  }
  
  public boolean ejecutaSQL (String s) throws SQLException {
    this.s.execute(s);
    return true;
  }
}
