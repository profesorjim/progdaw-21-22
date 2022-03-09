<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<html>
    <head>
        <title>AÃ±adir gente</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <%
          request.setCharacterEncoding("UTF-8");
          Class.forName("com.mysql.jdbc.Driver");
          Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/prueba","admin", "admin");
          Statement s = conexion.createStatement();
          
          
          String dniFormulario = request.getParameter("dni");  
          
          
          ResultSet listado = s.executeQuery ("SELECT * FROM gente WHERE DNI='"+dniFormulario+"'");
          listado.next();
          
        %>
        
        <div>Actualizar gente</div>
        <form action="procesoupdate.jsp" method="POST">
            DNI: <input type="text" value="<%=listado.getString("DNI")%>" disabled>
            <input type="hidden" name="dni" value="<%=listado.getString("DNI")%>"><br>
            Nombre: <input type="text" name="nombre" value="<%=listado.getString("Nombre")%>"><br>
            Apellido 1: <input type="text" name="apellido1" value="<%=listado.getString("Apellido1")%>"><br>
            Apellido 2: <input type="text" name="apellido2" value="<%=listado.getString("Apellido2")%>"><br>
            <button type="submit">Actualizar</button>
        </form>
        
        <%
          conexion.close();
        %>
    </body>
</html>
