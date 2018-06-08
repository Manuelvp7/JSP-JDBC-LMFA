/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ipn.mx.Control;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.jfree.chart.*;
import org.jfree.chart.plot.*;
import org.jfree.data.general.*;
import org.jfree.data.category.*;

/**
 *
 * @author mikeni
 */
public class GraficaServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String nombre = request.getParameter("nombre");
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ligadeamericano", "root", "root");
            Statement st = con.createStatement();
            String sql = "SELECT nombreEquipo, partidosGanados, partidosPerdidos, partidosEmpatados "
                    + "FROM RecordDeEquipo WHERE temporada like '2017' and nombreEquipo like 'Burros %'";
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
        } catch (SQLException | ClassNotFoundException | InstantiationException | IllegalAccessException ex) {
            Logger.getLogger(GraficaServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
/*
out.println("Metodo: "+request.getMethod());
        if(request.getMethod().equals("POST")){
            String equipo=request.getParameter("nombre");
            if(equipo.equals("null"))
                out.println("");
            else{
                out.println("Parametro: "+equipo);
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ligadeamericano", "root", "root");
                Statement st = con.createStatement();
                String sql = "SELECT nombreEquipo, partidosGanados, partidosPerdidos, partidosEmpatados "
                        + "FROM RecordDeEquipo WHERE temporada like '2017' and nombreEquipo like '"+equipo+" %'";
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
                session.invalidate(); 
            }
        }
 */
