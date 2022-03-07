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
          ResultSet listado = s.executeQuery ("SELECT DNI,Nombre FROM gente");
          
          out.println ("<table border=1>");
          out.println ("<tr><th>DNI</th><th>Nombre</th></tr>");
          while (listado.next()) {
              out.println("<tr><td>"+listado.getString("DNI") + "</td><td>" +listado.getString("Nombre") +"</td></tr>");
              
          
          }
          out.println ("</table>");
          conexion.close();
          %>
          <a href="selector.jsp">Selección individualizada</a><br>
          <a href="forminsert.html">Insertar nueva persona</a>
    </body>
</html>
