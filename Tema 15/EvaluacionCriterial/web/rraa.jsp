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
      if (request.getParameter("IDCE")!=null) {
        c.ejecutaSQL("UPDATE CCEE SET PesoGlobal="+request.getParameter("peso")+" WHERE IDCE="+request.getParameter("IDCE"));
        c = new ConexionBBDD();     
      }   
      
      ResultSet pesoTotal = c.consultaDatos("SELECT SUM(PesoGlobal) FROM CCEE");
      pesoTotal.next();
      out.print("<h2>Peso de todos los RRAA: "+pesoTotal.getString(1)+"</h2><br>");
      
      c = new ConexionBBDD();
      ResultSet datos = c.consultaDatos("SELECT * FROM RRAA");
      
      
      ResultSetMetaData metaDatos = datos.getMetaData();
      
      
      out.print("<table border=1>");
      out.print("<tr>");
       
      for (int i=2; i<=metaDatos.getColumnCount(); i++) {
        out.print("<th>"+metaDatos.getColumnName(i)+"</th>");
      }
      out.print("<th>Peso</th>");
      out.print("</tr>");
      while (datos.next()) {
        out.print("<tr>");
        for (int i=2; i<=metaDatos.getColumnCount(); i++) {
          out.print("<td>"+datos.getString(i)+"</td>");
        }
        
        ConexionBBDD c2 = new ConexionBBDD();
        
        ResultSet pesoParcial = c2.consultaDatos("SELECT SUM(PesoGlobal) FROM CCEE WHERE IDRARef="+datos.getString(1));
        
        pesoParcial.next();
        out.print("<td><b>"+pesoParcial.getString(1)+"</b></td>");
        
        out.print("</tr>");
            
        
        c2 = new ConexionBBDD();
        
        ResultSet datos2 = c2.consultaDatos("SELECT * FROM CCEE WHERE IDRARef='"+datos.getString(metaDatos.getColumnName(1))+"'");
        ResultSetMetaData metaDatos2 = datos2.getMetaData();
       
        out.print("<tr>");
        //out.print("<td></td>");
        out.print("<td align=\"right\" colspan=2>");
        out.print("<table border=1><tr>");
        for (int i=3; i<=metaDatos2.getColumnCount(); i++) {
          out.print("<th>"+metaDatos2.getColumnName(i)+"</th>");
        }
        out.print("</tr>");
        while (datos2.next()) {
          out.print("<tr>");
          for (int i=3; i<metaDatos2.getColumnCount(); i++) {
            out.print("<td>"+datos2.getString(i)+"</td>");
          }
          out.print("<td><table><td>");
          out.print("<form action=\"#\" method=\"post\">");
          out.print("<input type=\"hidden\" name=\"IDCE\" value=\""+datos2.getString(1)+"\">");
         
           out.print("<button type=\"submit\">Set</button></td><td>");
          out.print("<input type=\"decimal\" size=4 name=\"peso\" value=\""+datos2.getString(4)+"\"></td>");
         
          out.print("</form>");
          out.print("</table></td>");
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
