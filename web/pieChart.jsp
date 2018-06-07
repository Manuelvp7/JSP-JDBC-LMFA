<%-- 
    Document   : pieChart
    Created on : 31/05/2018, 10:51:31 PM
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
            String nombre = request.getParameter("nombre");
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ligadeamericano", "root", "root");
            Statement st = con.createStatement();
            String sql = "SELECT nombreEquipo, partidosGanados, partidosPerdidos, partidosEmpatados "
                    + "FROM RecordDeEquipo WHERE temporada like '2017' and nombreEquipo like '"+nombre+" %'";
            ResultSet rs = st.executeQuery(sql);
            
            DefaultPieDataset data = new DefaultPieDataset();
            rs.next();
            data.setValue("Ganados", rs.getInt(2));
            data.setValue("Perdidos", rs.getInt(3));
            data.setValue("Empatados", rs.getInt(4));

            JFreeChart grafica = ChartFactory.createPieChart("Partidos", data, true, true, true);
            response.setContentType("image/JPEG");
            OutputStream salida = response.getOutputStream();
            ChartUtilities.writeChartAsJPEG(salida, grafica, 500, 500);       
        %>
    </body>
</html>
