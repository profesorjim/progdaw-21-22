<%-- 
    Document   : index
    Created on : 30-mar-2022, 10:37:25
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
    <title>Alumnado</title>
  </head>
  <body>
    <h1>Alumnado</h1>
    <%
      
      Class.forName("com.mysql.jdbc.Driver");
      Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/Ciclo","admin", "admin");
      Statement s = conexion.createStatement();
      
      ResultSet alumnos = s.executeQuery("SELECT * from Alumnos");
      
      out.print("<table border=1>");
      
      while (alumnos.next()) {
        out.println("<tr><td>"+alumnos.getString("IDAL")+"</td>");
        out.println("<td>"+alumnos.getString("Nombre")+"</td>");
        %>
        <td>
        <form action="matricular.jsp" method="post">
          <input type="hidden" name="IDAL" value="<%=alumnos.getString("IDAL")%>">
          <button type="submit">Matrícula</button>
        </form>
        </td>
        <%
        out.println("</tr>");
      }
      out.println("</table>");
    %>
  </body>
</html>
