<%-- 
    Document   : newjsprraa.jsp
    Created on : 22-mar-2022, 8:08:08
    Author     : usuario
--%>

<%@page import="conexion.*"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.ResultSetMetaData"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Resultados de aprendizaje</title>
  </head>
  <body>
    <h1>Resultados de aprendizaje</h1>
    <%
      ConexionBBDD c = new ConexionBBDD();
      
      
      ResultSet datos = c.consultaDatos("SELECT * FROM RRAA");
      
      
      ResultSetMetaData metaDatos = datos.getMetaData();
      
      
      out.print("<table border=1>");
      out.print("<tr>");
       
      for (int i=2; i<=metaDatos.getColumnCount(); i++) {
        out.print("<th>"+metaDatos.getColumnName(i)+"</th>");
      }
      out.print("</tr>");
      while (datos.next()) {
        out.print("<tr>");
        for (int i=2; i<=metaDatos.getColumnCount(); i++) {
          out.print("<td>"+datos.getString(i)+"</td>");
        }
        out.print("</tr>");
        
        ConexionBBDD c2 = new ConexionBBDD();
        
        ResultSet datos2 = c2.consultaDatos("SELECT * FROM CCEE WHERE IDRARef='"+datos.getString(metaDatos.getColumnName(1))+"'");
        ResultSetMetaData metaDatos2 = datos2.getMetaData();
       
        out.print("<tr>");
        //out.print("<td></td>");
        out.print("<td align=\"right\">");
        out.print("<table border=1><tr>");
        for (int i=3; i<=metaDatos2.getColumnCount(); i++) {
          out.print("<th>"+metaDatos2.getColumnName(i)+"</th>");
        }
        out.print("</tr>");
        while (datos2.next()) {
          out.print("<tr>");
          for (int i=3; i<=metaDatos2.getColumnCount(); i++) {
            out.print("<td>"+datos2.getString(i)+"</td>");
          }
          out.print("</tr>");
        }
        out.print("</table>");
        out.print("</td>");
        out.print("</tr>");
      }
      out.print("</table>");
      %>
  </body>
</html>
