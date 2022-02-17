<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Conversor €-PTA</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <%
          request.setCharacterEncoding("UTF-8");
          float euros=0.0f;
          
          if (request.getParameter("euros")!=null) {
             euros= Float.parseFloat(request.getParameter("euros"));
          }
          int pesetas = (int)(euros*166.386);

        %>
        <div>
            <form action="index2.jsp" method="POST">
                Cantidad en €: <input type="text" name="euros" value="<%=euros%>"><br>
                <button type="submit">Convertir</button>
            </form>
            
            <%
            if (request.getParameter("euros")!=null) { 
                out.print(String.format("La cantidad de %.2f € equivale a %d",euros,pesetas));
            }
            %>
            <!--La cantidad de <%out.print(String.format("%.2f",euros)); %> € equivale a <%=pesetas%> PTAS.<br><p>-->
                
                
        </div>
    </body>
</html>
