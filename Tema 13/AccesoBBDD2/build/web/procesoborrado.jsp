<%-- 
    Document   : index
    Created on : 21-feb-2022, 11:00:24
    Author     : usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
          request.setCharacterEncoding("UTF-8");
          Class.forName("com.mysql.jdbc.Driver");
          Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/prueba","admin", "admin");
          Statement s = conexion.createStatement();
          
          
          String dniFormulario = request.getParameter("dni");  
          
          s.execute("DELETE FROM gente WHERE DNI='"+dniFormulario+"'");
          
          
          ResultSet listado = s.executeQuery ("SELECT * FROM gente");
          
          out.println ("<table border=1>");
          out.println ("<tr><th>DNI</th><th>Nombre</th><th>Apellido 1</th><th>Apellido 2</th></tr>");
          while (listado.next()) {
              out.println("<tr><td>"+listado.getString("DNI") +"</td><td>" 
                      +listado.getString("Nombre") +"</td><td>"
                      +listado.getString("Apellido1") +"</td><td>"
                      +listado.getString("Apellido2") +"</td></tr>");
              
          
          }
          out.println ("</table>");
          conexion.close();
          %>
          <a href="index.jsp"> Ir al principio</a>
    </body>
</html>
