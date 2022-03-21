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
      out.print(miTablero.toHtmlTable());
    %>
  </body>
</html>
