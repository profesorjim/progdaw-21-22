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
    <title>EVALUACION CRITERIAL</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  </head>
  <body>
    <%
      
      if ("logout".equals(request.getParameter("accion"))) {
        //session.removeAttribute("usuario");
        session.invalidate();
        session = request.getSession();
      }
      
      String usuario = (String)session.getAttribute("usuario");

      if (usuario==null) {
        usuario = request.getParameter("usuarioform");
        
        if (usuario!=null) {
          request.setCharacterEncoding("UTF-8");
          Class.forName("com.mysql.jdbc.Driver");
          Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/EvalCrit", "admin", "admin");
          Statement s = conexion.createStatement();
          
          //String consulta="SELECT * FROM Usuarios WHERE Usuario='"+usuario+"' AND Contrasenia='"+request.getParameter("contraseniaform")+"'";
          String consulta="SELECT * FROM Usuarios WHERE Usuario='";
          consulta += usuario+"' AND Contrasenia='";
          consulta += request.getParameter("contraseniaform")+"'";
          
          ResultSet consultaLogin = s.executeQuery(consulta);
          
          if (consultaLogin.next()){
            session.setAttribute("usuario",usuario);
          } else {
            usuario=null;
          }
        }
      }
        
      if (usuario==null) {

        %>
        Por favor, loguéese:<br>
        <form action="#" method="post">
          Nombre de usuario: <input type="text" name="usuarioform"><br>
          Contraseña: <input type="password" name="contraseniaform"><br>
          <button type="submit">LogIn</button>
          
        </form>    
        </body>
        </html>
        <%
        out.close();
      }
      
      
    %>
    <div>EVAUACION CRITERIAL</div>
    <a href="rraa.jsp">Resultados de aprendizaje</a>
    <form action="#" method="post">
      <input type="hidden" name="accion" value="logout">
      <button type="submit">LogOut</button>      
    </form>
  </body>
</html>
