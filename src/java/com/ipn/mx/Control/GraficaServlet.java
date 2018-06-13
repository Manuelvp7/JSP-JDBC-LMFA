/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ipn.mx.Control;

import com.ipn.mx.Conexiones.Conexion;
import com.ipn.mx.DAO.RecorddeequipoDAOImpl;
import com.ipn.mx.Modelo.Recorddeequipo;
import com.ipn.mx.Modelo.RecorddeequipoKey;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import static java.lang.System.out;
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

    private RecorddeequipoDAOImpl unRecorddeequipoDAOImpl;
    private Recorddeequipo unRecorddeequipo;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RecorddeequipoKey key;
        try {

            String nombre = request.getParameter("nombre");
            if (nombre != null) {
                key = new RecorddeequipoKey("2017", nombre);
                unRecorddeequipo = unRecorddeequipoDAOImpl.load(key, Conexion.crearConexion());
                DefaultPieDataset data = new DefaultPieDataset();

                data.setValue("Ganados", unRecorddeequipo.getPartidosganados());
                data.setValue("Perdidos", unRecorddeequipo.getPartidosperdidos());
                data.setValue("Empatados", unRecorddeequipo.getPartidosempatados());

                JFreeChart grafica = ChartFactory.createPieChart("Partidos", data, true, true, true);
                response.setContentType("image/JPEG");
                OutputStream salida = response.getOutputStream();
                ChartUtilities.writeChartAsJPEG(salida, grafica, 500, 500);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void init() throws ServletException {
        super.init(); //To change body of generated methods, choose Tools | Templates.
        unRecorddeequipoDAOImpl = new RecorddeequipoDAOImpl();
        unRecorddeequipo = new Recorddeequipo();

    }

}
