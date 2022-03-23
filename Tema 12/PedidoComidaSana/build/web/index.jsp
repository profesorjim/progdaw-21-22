<%-- 
    Document   : index
    Created on : 22-mar-2022, 13:23:30
    Author     : usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="producto.Producto"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
  </head>
  <body>
    <h1>Comida sana</h1>
    Se propone al alumnado que incorpore un par de clases más, Pedido y LineaPedido, para su
    uso en el script pedido.jsp
    <%
      ArrayList<Producto> misProductos = new ArrayList<Producto>();
      misProductos.add(new Producto("Hamburguesa vegetariana",6.20f,"comida","hamburguesa.png","imagenes"));
      misProductos.add(new Producto("Pasta al peso",4.90f,"comida","pasta.png","imagenes"));
      misProductos.add(new Producto("Pizza caprese",5.50f,"comida","pizza.png","imagenes"));
      misProductos.add(new Producto("Quinoa con verdura",6.95f,"comida","quinoa.png","imagenes"));
      misProductos.add(new Producto("Agua",1.00f,"bebida","agua.png","imagenes"));
      misProductos.add(new Producto("Cerveza",1.50f,"bebida","cerveza.png","imagenes"));
      misProductos.add(new Producto("Refresco",1.40f,"bebida","refresco.png","imagenes"));
      
      session.setAttribute("productos", misProductos);
      
      %>
      <form action="pedido.jsp" method="post">
      <table>
        <tr>
        <%
          int i;
          for (i=0; i<misProductos.size() && misProductos.get(i).getTipo().equals("comida"); i++) {
            %>
            <td>
              <%=misProductos.get(i).toIMG()%><br>
              <%=misProductos.get(i).getNombre()%><br>
              <input type="number" name="cantidad<%=i%>" value="0">
              
            </td>
            <%
          }
          %>
        </tr><tr>
          <%
            for (;i<misProductos.size(); i++) {
              %>
              <td>
                <%=misProductos.get(i).toIMG()%><br>
                <%=misProductos.get(i).getNombre()%><br>
                <input type="number" name="cantidad<%=i%>" value="0">
              </td>
              <%            
            }
            %>
        </tr>
      </table>
        <button type="submit">Hacer pedido</button>
      </form>
  </body>
</html>
