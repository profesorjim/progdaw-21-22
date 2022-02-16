<%-- 
    Document   : conversor
    Created on : 16-feb-2022, 10:46:10
    Author     : usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Conversor a PTAS</title>
    </head>
    <body>
        <h1>Conversor a PTAS</h1>
        <%
        request.setCharacterEncoding("UTF-8");
        double euros = Double.parseDouble(request.getParameter("euros"));  
        int pesetas = (int)(euros*166.386);
        %>
        
        La cantidad de <%out.print(String.format("%.2f",euros)); %> € equivale a <%=pesetas%> PTAS.<br><p>
        
        <form action="index.jsp" method="POST">
            <input type="hidden" name="euros0" value="<%=euros%>">
            <button type="submit">Ir al inicio</button>
        </form>
    </body>
</html>
