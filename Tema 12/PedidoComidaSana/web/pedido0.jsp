<%-- 
    Document   : pedido
    Created on : 23-mar-2022, 11:15:38
    Author     : usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="producto.Producto"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Pedido</title>
  </head>
  <body>
    <h1>Aquí tiene su pedido</h1>
    <table><tr><th>Comida/bebida</th><th>PVP</th><th>Cantidad</th><th>Subtotal</th></tr>
    <%
      ArrayList<Producto> misProductos;
      misProductos=(ArrayList<Producto>)session.getAttribute("productos");
      float parcial=0.0f;
      float total=0.0f;
      
      for (int i=0; i<misProductos.size(); i++) {
        if (Integer.parseInt(request.getParameter("cantidad"+i))>0) {
          parcial = Integer.parseInt(request.getParameter("cantidad"+i))*misProductos.get(i).getPrecio();
          total = total + parcial;
        %>
          <tr>
            <td><%=misProductos.get(i).getNombre()%></td>
            <td><%=misProductos.get(i).getPrecio()%></td>
            <td><%=request.getParameter("cantidad"+i)%></td>
            <td><%=parcial%></td>
          </tr>
        <%
        }
      }
      %>
    </table>
    <b>Total <%=total%> €</b>
  </body>
</html>
