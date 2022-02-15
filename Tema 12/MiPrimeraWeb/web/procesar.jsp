<%-- 
    Document   : procesar.jsp
    Created on : 15-feb-2022, 12:12:33
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
        <%
          request.setCharacterEncoding("UTF-8");
          out.print(request.getParameter("dato1"));
          

          %>
    </body>
</html>
