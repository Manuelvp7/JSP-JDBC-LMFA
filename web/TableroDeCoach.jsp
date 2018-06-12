<%-- 
    Document   : TableroDeCoach
    Created on : Jun 7, 2018, 9:40:32 PM
    Author     : manuel
--%>

<%@page import="com.ipn.mx.Modelo.Partido"%>
<%@page import="com.ipn.mx.Modelo.Recorddeequipo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.ipn.mx.Modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Usuario unUsuario;
            List tablaDePosiciones = new ArrayList<Recorddeequipo>();
            List tablaDeResultados = new ArrayList<Partido>();
            List proximosPartidos = new ArrayList<Partido>();

            String nombre = null;
            try {
                unUsuario = (Usuario) session.getAttribute("usuario");
                
                            
               tablaDePosiciones = (ArrayList<Recorddeequipo>)session.getAttribute("tablaDePosiciones");
               tablaDeResultados = (ArrayList<Partido>)session.getAttribute("proximosPartidos");
               proximosPartidos = (ArrayList<Partido>)session.getAttribute("tablaDeResultados");
                nombre = unUsuario.getNombreusuario();

            } catch (Exception e) {
            }
        %>
        <h1>Bienvenido <%=nombre%></h1>
        <form method="post" action="TableroCoachServlet" autocomplete="off">

            <table>
                <thead>TABLA DE POSICIONES</thead>
                <tr>
                    <td>
                        EQUIPO
                    </td>
                
                    <td>
                        G
                    </td>
                
                
                    <td>
                        P
                    </td>
                
                
                    <td>
                        E
                    </td>

                </tr>
                
                <%for (Object record : tablaDePosiciones) {
                        Recorddeequipo unRecorddeequipo = (Recorddeequipo)record;
                        
                        %>
                
                                <tr>
                    <td>
                        <%=unRecorddeequipo.getNombreequipo()%>
                    </td>
                
                    <td>
                        <%=unRecorddeequipo.getPartidosganados()%>
                    </td>
                
                
                    <td>
                        <%=unRecorddeequipo.getPartidosperdidos()%>
                    </td>
                
                
                    <td>
                        <%=unRecorddeequipo.getPartidosempatados()%>
                    </td>
                
                
                    
                </tr>
                
                <%
                    }
                %>
                
                
            </table>
                
                            <table>
                <thead>PROXIMAS FECHAS</thead>
                <tr>
                    <td>
                        FECHA
                    </td>
                                        <td>
                        HORA
                    </td>
                
                    <td>
                        LOCAL
                    </td>
                
                
                    <td>
                        VISITANTE
                    </td>
                

                </tr>
                
                <%for (Object record : proximosPartidos) {
                        Partido proximoPartido = (Partido)record;
                        
                        
                        
                        %>
                
                                <tr>
                    <td>
                        <%= proximoPartido.getFecha().toString()%>
                    </td>
                
                    <td>
                        <%=proximoPartido.getHora().toString()%>
                    </td>
                
                
                    <td>
                        <%=proximoPartido.getEquipolocal()%>
                    </td>
                
                
                    <td>
                        <%=proximoPartido.getEquipovisitante()%>
                    </td>
                
                
                    
                </tr>
                
                <%
                    }
                %>
                
                
            </table>



            <input type="submit">


        </form>
    </body>
</html>
