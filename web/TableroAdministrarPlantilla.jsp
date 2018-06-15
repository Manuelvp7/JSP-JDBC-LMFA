<%-- 
    Document   : TableroAdministrarPlantilla
    Created on : 14/06/2018, 04:52:44 PM
    Author     : fa
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.ipn.mx.Modelo.Jugador"%>
<%@page import="java.util.List"%>
<%@page import="com.ipn.mx.Conexiones.Conexion"%>
<%@page import="com.ipn.mx.DAO.PosicionDAOImpl"%>
<%@page import="com.ipn.mx.Modelo.Posicion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form action="ControlTableroDePLantillaServlet">
            <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
            <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
            <script>
                $(function () {
                    $("#datepicker").datepicker();
                });
            </script>

            
            <table>
                
                <tr>
                    <td>
                        CURP
                    </td>
                    <td>
                        NOMBRE
                    </td>
                                        <td>
                        PATERNO
                    </td>
                                        <td>
                        MATERNO
                    </td>
                                        <td>
                        EDAD
                    </td>
                                        <td>
                        FECHA
                    </td>
                                        <td>
                        POSICION
                    </td>
                                        <td>
                        NUMERO
                    </td>
                                        <td>
                        SALARIO
                    </td>

                                        <td>
                        BAJA POR LESION
                    </td>
                </tr>
                
                <%
                    List<Jugador>tablaJugadores =(ArrayList<Jugador>) session.getAttribute("tablaDeJugadores");
                    for (Jugador unJugador : tablaJugadores) {
                        
                        %>
                
                                        <tr>
                    <td>
                        <%=unJugador.getCurp()%>
                    </td>
                    <td>
                        <%=unJugador.getNombre()%>
                    </td>
                                        <td>
                        <%=unJugador.getPaterno()%>
                    </td>
                                        <td>
                        <%=unJugador.getMaterno()%>
                    </td>
                                        <td>
                        <%=unJugador.getEdad()%>
                    </td>
                                        <td>
                        <%=unJugador.getFechanacimiento()%>
                    </td>
                                        <td>
                        <%=unJugador.getPosicion()%>
                    </td>
                                        <td>
                        <%=unJugador.getNumero()%>
                    </td>
                                        <td>
                        <%=unJugador.getSalario()%>
                    </td>

                                        <td>
                        <%=unJugador.getBajaporlesion()%>
                    </td>
                
                
                <%
                        }
                    
                %>
                
                
                
            </table>
            <input type="text" placeholder="Nombre" name="nombre" id="curp" required="">
            <br>
            <input type="text" placeholder="Nombre" name="nombre" id="nombre" required="">
            <br>
            <input type="text" placeholder="" name="nombre" id="paterno" required="">
            <br>
            <input type="text" placeholder="Apellido materno" name="nombre" id="materno" required="">
            <br>
            <input type="text" placeholder="Edad" name="nombre" id="edad" required="">
            <br>
            <p>Date: <input type="text" id="fechaNacimiento"></p>
            <input type="text" placeholder="numero" name="nombre" id="numero" required="">
            <br>
            
            <%
                PosicionDAOImpl unPosicionDAOImpl = new PosicionDAOImpl();
                List<Posicion> posiciones = unPosicionDAOImpl.load(Conexion.crearConexion());
            %>

            <select name="POSICIONES" id="POSICIONES">
                <option>Seleccione una posicion</option>
                <% for (Posicion p : posiciones) {%>
                <option value="<%=p.getPosicion()%>"><%=p.getPosicion()%></option>
                <% }%>
            </select>
            
            <input type="text" placeholder="Posicion" name="posicion" id="nombre" required="">
            <br>
            <input type="text" placeholder="Salario" name="salario" id="nombre" required="">
            <br>
            <input type="submit" placeholder="AGREGAR" name="agregar">
            <input type="submit" placeholder="ACTUALIZAR"name="actualizar">
            <input type="submit" placeholder="ELIMINAR"name="eliminar         ">


        </form>
    </body>
</html>
