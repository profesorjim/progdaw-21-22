<%-- 
    Document   : index
    Created on : 21-mar-2022, 12:38:37
    Author     : usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="tresEnRaya.*"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Tres en raya</title>
    <style>
      td {
        border: lightgray solid 1px;
      }
    </style>
  </head>
  <body>
    <%
      Tablero miTablero = new Tablero();
      miTablero.Rellenar();
    %>
    <table>
      <%
      for (int i = 0; i < 3; i++) {
      %>
      <tr>
        <%
        for (int j = 0; j < 3; j++) {
        %>
          <td><%=miTablero.getCasilla(i,j).toHtmlImg()%></td>
        <%
        }
      }
      %>
    </table>
  </body>
</html>
