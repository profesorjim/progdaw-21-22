<%-- 
    Document   : procesoinsert
    Created on : 07-mar-2022, 11:03:17
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
        <title>Procesamiento alta</title>
    </head>
    <body>
        <h1>Actualizando ...</h1>
        <%
          request.setCharacterEncoding("UTF-8");
          Class.forName("com.mysql.jdbc.Driver");
          Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/prueba","admin", "admin");
          Statement s = conexion.createStatement();
          
          String sentencia= "UPDATE gente SET";
          //sentencia += " DNI='"+request.getParameter("dni")+"',";
          sentencia += " Nombre='"+request.getParameter("nombre")+"',";
          sentencia += " Apellido1='"+request.getParameter("apellido1")+"',";
          sentencia += " Apellido2='"+request.getParameter("apellido2")+"'";
          sentencia += " WHERE DNI='"+request.getParameter("dni")+"'";
          //out.print(sentencia);
          
          s.execute(sentencia);
          
          conexion.close();
          %>
          <a href="index.jsp">Ir al principio</a>
    </body>
</html>
