
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%
 if (session.getAttribute("usuario")!=null) {
   response.sendRedirect("index.jsp");
 }
%>

<html>
  <head>
    <title>EVALUACION CRITERIAL - LOGIN</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  </head>
  <body>
    <div>EVAUACION CRITERIAL - LOGIN</div>
        Por favor, loguéese:<br>
        <form action="index.jsp" method="post">
          Nombre de usuario: <input type="text" name="usuarioform"><br>
          Contraseña: <input type="password" name="contraseniaform"><br>
          <button type="submit">LogIn</button>
        </form>    
  </body>
</html>
