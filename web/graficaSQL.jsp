<%-- 
    Document   : graficaSQL
    Created on : 17/05/2018, 07:05:29 PM
    Author     : mikeni
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%@page import="org.jfree.chart.*"%>
<%@page import="org.jfree.chart.plot.*"%>
<%@page import="org.jfree.data.general.*"%>
<%@page import="org.jfree.data.category.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ligadeamericano", "root", "root");
            Statement st = con.createStatement();
            String sql = "SELECT nombreEquipo, partidosGanados, partidosPerdidos, partidosEmpatados "
                    + "FROM RecordDeEquipo WHERE temporada like '2017' and nombreEquipo like 'Burros %'";
            ResultSet rs = st.executeQuery(sql);
            
            DefaultCategoryDataset data = new DefaultCategoryDataset();
            rs.next();
            data.setValue(rs.getInt(2), "Ganados", rs.getString(1));
            data.setValue(rs.getInt(4), "Empatados", rs.getString(1));
            data.setValue(rs.getInt(3), "Perdidos", rs.getString(1));

            JFreeChart grafica = ChartFactory.createBarChart("Partidos", "Equipo", "Juegos jugados", data, PlotOrientation.VERTICAL, true, true, true);
            response.setContentType("image/JPEG");
            OutputStream salida = response.getOutputStream();
            ChartUtilities.writeChartAsJPEG(salida, grafica, 1000, 500);
        %>
    </body>
</html>
