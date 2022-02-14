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
          int cont = 1;
          out.println("<table border=1>");
          for (int i=0; i<10; i++) {
            out.println("<tr>");
            for (int j=0; j<15; j++) {
                out.print("<td>");
                out.print(cont);
                cont++;
                out.print("</td>");
            }            
            out.println("</tr>");
          }
          out.println("</table>");
          out.println("<p><br>");
          out.println("<table border=2>");
          for (int i=0; i<10; i++) {
            out.println("<tr>");
            for (int j=0; j<15; j++) {
                out.print("<td>");
                out.print(cont);
                cont = (int)(Math.random()*200);
                out.print("</td>");
            }            
            out.println("</tr>");
          }
          out.print("</table>");
          
          out.print("<script>alert('Esto es la pera "+cont+"');</script>");
        %>
    </body>
</html>
