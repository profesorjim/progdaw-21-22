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
        <title>Manipulación tabla GENTE</title>
    </head>
    <body>
        <h1>Manipulación tabla GENTE</h1>
        <%
          request.setCharacterEncoding("UTF-8");
          Class.forName("com.mysql.jdbc.Driver");
          Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/prueba","prueba", "prueba");
          Statement s = conexion.createStatement();
          
          boolean preactualizando=false;
          String dniPreactualizacion="";
          
          if ("insertando".equals(request.getParameter("accion"))) {
            String sentencia= "INSERT INTO gente VALUES (";
            sentencia += "'"+request.getParameter("dni")+"',";
            sentencia += "'"+request.getParameter("nombre")+"',";
            sentencia += "'"+request.getParameter("apellido1")+"',";
            sentencia += "'"+request.getParameter("apellido2")+"'";
            sentencia += ")";
          
            s.execute(sentencia);
          } else if ("preactualizando".equals(request.getParameter("accion"))) {
            preactualizando = true;
            dniPreactualizacion=request.getParameter("dni");
          } else if ("actualizando".equals(request.getParameter("accion"))) {
            dniPreactualizacion=request.getParameter("dni");
            
            String sentencia= "UPDATE gente SET";
            //sentencia += " DNI='"+request.getParameter("dni")+"',";
            sentencia += " Nombre='"+request.getParameter("nombre")+"',";
            sentencia += " Apellido1='"+request.getParameter("apellido1")+"',";
            sentencia += " Apellido2='"+request.getParameter("apellido2")+"'";
            sentencia += " WHERE DNI='"+request.getParameter("dni")+"'";
            //out.print(sentencia);

            s.execute(sentencia);
          } 
          
          
          
          // presentaciójn de la tabla
          ResultSet listado = s.executeQuery ("SELECT * FROM gente");
          
          out.println ("<table border=1>");
          out.println ("<tr><th>DNI</th><th>Nombre</th><th>Primer apellido</th><th>Segundo apellido</th></tr>");
          while (listado.next()) {
              if (preactualizando && dniPreactualizacion.equals(listado.getString("DNI"))) {
              %>
                <form action="index.jsp" method="POST">
                  <tr> 
                      <td><%=listado.getString("DNI")%></td>
                      <td><input type="text" name="nombre" value="<%=listado.getString("Nombre")%>"></td>
                      <td><input type="text" name="apellido1" value="<%=listado.getString("Apellido1")%>"></td>
                      <td><input type="text" name="apellido2" value="<%=listado.getString("Apellido2")%>"></td>
                      <td><input type="hidden" name="dni" value="<%=listado.getString("DNI")%>">
                          <input type="hidden" name="accion" value="actualizando">
                          <button type="submit">Grabar cambios</button>
                      </td>
                  </tr>
                </form>
              <%
              } else {
                // presentacion normal de tupla              
                out.println("<tr><td>"+listado.getString("DNI")
                        + "</td><td>" +listado.getString("Nombre") 
                        + "</td><td>" +listado.getString("Apellido1") 
                        + "</td><td>" +listado.getString("Apellido2") 
                        + "</td><td>");
                %>
                          <form action="index.jsp" method="POST">
                              <input type="hidden" name="accion" value="preactualizando">
                              <input type="hidden" name="dni" value="<%=listado.getString("DNI")%>">
                              <button type="submit">Modificar</button>
                          </form>
               
               <%
               }
               out.print("</td></tr>");
              
          
          }
          out.println ("</table>");
          conexion.close();
          %>
          <p><br>  
        <div>Añadir gente</div>
        <form action="index.jsp" method="POST">
            DNI: <input type="text" name="dni"><br>
            Nombre: <input type="text" name="nombre"><br>
            Apellido 1: <input type="text" name="apellido1"><br>
            Apellido 2: <input type="text" name="apellido2"><br>
            <input type="hidden" name="accion" value="insertando">
            <button type="submit">Dar de alta</button>
        </form>

    </body>
</html>
