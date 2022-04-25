<%-- 
    Document   : matricular.jsp
    Created on : 07-abr-2022, 12:18:20
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
    <title>Matrícula</title>
  </head>
  <body>
    <h1>Alumno:</h1>
    <%
      request.setCharacterEncoding("UTF-8");
      
      Class.forName("com.mysql.jdbc.Driver");
      Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/Clases_Ciclo","admin", "admin");
      Statement s = conexion.createStatement();
      Statement q = conexion.createStatement();
      Statement r = conexion.createStatement();
      
      if (request.getParameter("IDAL")!=null) {
        session.setAttribute("alumno",request.getParameter("IDAL"));
      }
      
      String alumno = (String)(session.getAttribute("alumno"));
      
      ResultSet alumnos = s.executeQuery("SELECT Nombre from Alumnos WHERE IDAL="+alumno);
      
      alumnos.next();
      
      //procesar insercion
      
      if (request.getParameter("nuevoModulo")!=null) {
        r.execute("INSERT INTO Matriculas (IDAL,IDMOD) VALUES ("+alumno+","+request.getParameter("nuevoModulo")+")");
      }
      
      //obtención del primer atributo del resultset 
      //en este caso, sería equivalente a getString("Nombre")
      out.print("<h1>"+alumnos.getString(1)+"</h1>");
      
      ResultSet modulos = s.executeQuery("SELECT IDMATR,Matriculas.IDAL,Matriculas.IDMOD,NombreModulo from Matriculas INNER JOIN Modulos ON Matriculas.IDMOD=Modulos.IDMOD WHERE IDAL="+alumno);
      
      ResultSet todosModulos = q.executeQuery("SELECT * FROM Modulos WHERE IDMOD NOT IN (SELECT IDMOD from Matriculas WHERE IDAL="+alumno+")");
      
      out.print("<table border=1>");
      
      while (modulos.next()) {
        out.println("<tr><td>"+modulos.getString("IDMATR")+"</td>");
        out.println("<td>"+modulos.getString("IDAL")+"</td>");
        out.println("<td>"+modulos.getString("IDMOD")+"</td>");
        out.println("<td>"+modulos.getString("NombreModulo")+"</td>");
        %>
        
        <%
        out.println("</tr>");
      }
      %>
      <tr>
        <td></td><td></td><td></td>
        <td>
          <form action="#" method="post">
            <select name="nuevoModulo">
              <%
                while (todosModulos.next()) {
                  out.print("<option value=\""+todosModulos.getString("IDMOD")+"\">"+todosModulos.getString("NombreModulo")+"</option>");
                }
              %>
            </select>
            <button type="submit">Nueva matrícula</button>
          </form>
        </td>
      </tr>
      <%
      out.println("</table>");

    %>
  </body>
</html>
