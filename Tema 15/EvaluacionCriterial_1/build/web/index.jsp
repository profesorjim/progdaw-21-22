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
    
    <%@include file="login.jsp"%>
    <%
      
      
    %>
    <div>EVAUACION CRITERIAL</div>
    <a href="rraa.jsp">Resultados de aprendizaje</a>
    <form action="#" method="post">
      <input type="hidden" name="accion" value="logout">
      <button type="submit">LogOut</button>      
    </form>
  </body>
</html>
