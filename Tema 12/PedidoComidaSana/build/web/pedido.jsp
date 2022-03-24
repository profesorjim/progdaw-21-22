<%-- 
    Document   : pedido
    Created on : 23-mar-2022, 11:15:38
    Author     : usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="producto.Producto"%>
<%@page import="pedido.Pedido"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Pedido</title>
  </head>
  <body>
    <h1>Aquí tiene su pedido</h1>
    <%
      ArrayList<Producto> misProductos;
      misProductos=(ArrayList<Producto>)session.getAttribute("productos");
      Pedido miPedido = new Pedido();
      
     

      for (int i=0; i<misProductos.size(); i++) {
        if (Integer.parseInt(request.getParameter("cantidad"+i))>0) {
          miPedido.aniadirProducto(misProductos.get(i), Integer.parseInt(request.getParameter("cantidad"+i)));
        }
      }
      out.print(miPedido.toHTML());
      %>
    
    
    
    
  </body>
</html>
