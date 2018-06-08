<%-- 
    Document   : TableroDeCoach
    Created on : Jun 7, 2018, 9:40:32 PM
    Author     : manuel
--%>

<%@page import="com.ipn.mx.Modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%Usuario unUsuario;%>
        <%
            String curp = null;
            try {
                    unUsuario = (Usuario)session.getAttribute("usuario");
                    curp= unUsuario.getCurp();
                    
                } catch (Exception e) {
                }
            %>
        <h1>Bienvenido <%=curp%></h1>
        
    </body>
</html>
