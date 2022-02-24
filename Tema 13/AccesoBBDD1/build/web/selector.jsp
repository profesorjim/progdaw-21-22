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
        <h1>Seleccione el DNI</h1>
        <%
          request.setCharacterEncoding("UTF-8");
          Class.forName("com.mysql.jdbc.Driver");
          Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/prueba","admin", "admin");
          Statement s = conexion.createStatement();
          ResultSet listado = s.executeQuery ("SELECT DNI FROM gente");
          
          out.print ("<form name=\"selector\" action=\"listado.jsp\" method=\"POST\">");
          out.print("<select name=\"dni\">");
          while (listado.next()) {
              out.println("<option value=\""+listado.getString("DNI")+"\">"+listado.getString("DNI")+"</option>\n");          
          }
          out.println("</select><br>");
          out.println ("<button type=\"submit\">Enviar</button>");
          out.print ("</form>");
          conexion.close();
          %>
    </body>
</html>
