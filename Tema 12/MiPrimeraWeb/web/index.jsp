<%-- 
    Document   : index
    Created on : 10-feb-2022, 12:21:18
    Author     : usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
          for (int i=0; i<10; i++) {
        %>
        <b>Hola<% out.print(i);%></b><br>
        <%
          }
          
        %>
        <a href="tabla.jsp">Enlace a tabla.jsp</a>
    </body>
</html>
