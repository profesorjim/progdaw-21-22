<%-- 
    Document   : index
    Created on : 15-mar-2022, 13:16:20
    Author     : usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Memorión</title>
    </head>
    <body>
        <%
          String frase="";
          String memorion="";
          
          memorion=(String)session.getAttribute("memorion");
          
          
          frase = request.getParameter("frase")==null?"":request.getParameter("frase");

          if (memorion==null) {
            memorion="";
          } else {
            
            if (!frase.equals("")) {
                memorion = memorion + frase + "<br>";                        
            }
          }
          
           session.setAttribute("memorion", memorion);
          
          
          %>
        <h1>Soy capaz de memorizar</h1>
        <form name="datos" method="post" action="#">
            Escriba algo: <input type="text" name="frase"><br>
            <button type="submit">Memorizar</button>
        </form>
        <%
          
          
          
            out.print(memorion);


          %>
    </body>
</html>
