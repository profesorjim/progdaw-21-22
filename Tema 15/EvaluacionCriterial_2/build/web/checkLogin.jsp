
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%
      
      if ("logout".equals(request.getParameter("accion"))) {
        //session.removeAttribute("usuario");
        session.invalidate();
        session = request.getSession();
      }
      
      String usuario = (String)session.getAttribute("usuario");

      if (usuario==null) {
        usuario = request.getParameter("usuarioform");
        
        if (usuario!=null) {
          request.setCharacterEncoding("UTF-8");
          Class.forName("com.mysql.jdbc.Driver");
          Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/EvalCrit", "admin", "admin");
          Statement s = conexion.createStatement();
          
          //String consulta="SELECT * FROM Usuarios WHERE Usuario='"+usuario+"' AND Contrasenia='"+request.getParameter("contraseniaform")+"'";
          String consulta="SELECT * FROM Usuarios WHERE Usuario='";
          consulta += usuario+"' AND Contrasenia='";
          consulta += request.getParameter("contraseniaform")+"'";
          
          ResultSet consultaLogin = s.executeQuery(consulta);
          
          if (consultaLogin.next()){
            session.setAttribute("usuario",usuario);
          } else {
            usuario=null;
          }
        }
      }
        
      if (usuario==null) {
        response.sendRedirect("login.jsp");
        
      }
      
      
    %>