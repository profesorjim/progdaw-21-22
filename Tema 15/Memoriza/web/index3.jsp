<%-- 
    Document   : index
    Created on : 15-mar-2022, 13:16:20
    Author     : usuario
--%>

<%@page import="java.util.ArrayList"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Memorión</title>
    </head>
    <body>
        <form action="#" method="post">
            <input type="hidden" name="reset" value=1>
            <button type="submit">Resetear memoria</button>
        </form><br>
        <%
          String frase="";
          ArrayList<String> memorion;
          
          if (request.getParameter("reset")!=null) {
            session.invalidate();
            session = request.getSession(true);
            
          }
          
          memorion=(ArrayList<String>)session.getAttribute("memorion");
          
          
          frase = request.getParameter("frase")==null?"":request.getParameter("frase");

          
          if (memorion==null) {
            memorion= new ArrayList<String>();
          } else {
            
            if (!frase.equals("")) {
                memorion.add(frase);
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
          
          for (String s:memorion) {
            out.print(s+"<br>");
          }

          %>
    </body>
</html>
