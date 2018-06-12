/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ipn.mx.Control;

import com.ipn.mx.Conexiones.Conexion;
import com.ipn.mx.DAO.EquipoDAOImpl;
import com.ipn.mx.DAO.PartidoDAOImpl;
import com.ipn.mx.DAO.RecorddeequipoDAOImpl;
import com.ipn.mx.Modelo.Equipo;
import com.ipn.mx.Modelo.Recorddeequipo;

import com.ipn.mx.Modelo.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.ipn.mx.Modelo.Partido;
import com.ipn.mx.Modelo.RecorddeequipoKey;

/**
 *
 * @author manuel
 */
@WebServlet(name = "TableroCoachServlet", urlPatterns = {"/TableroCoachServlet"})
public class TableroCoachServlet extends HttpServlet {

    private RecorddeequipoDAOImpl unRecorddeequipoDAOImpl;
    private PartidoDAOImpl unPartidoDAOImpl;
    private Equipo equipoCoach;
    private EquipoDAOImpl unEquipoDAOImpl;
    private Usuario unUsuario;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet TableroCoachServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet TableroCoachServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        List tablaDePosiciones = new ArrayList<Recorddeequipo>();
        List tablaDeResultados = new ArrayList<Partido>();
        List proximosPartidos = new ArrayList<Partido>();
        
        
        try {
            unUsuario = (Usuario)session.getAttribute("usuario");
            
            
            equipoCoach = new Equipo();
            
            
            
            
            equipoCoach = unEquipoDAOImpl.loadEquipoCoach(unUsuario.getCurp(), Conexion.crearConexion());
            
            proximosPartidos = unPartidoDAOImpl.loadProximosPartidos("2017",equipoCoach.getNombre(), Conexion.crearConexion());
            tablaDePosiciones = unRecorddeequipoDAOImpl.load("2017",Conexion.crearConexion());
            tablaDeResultados = unPartidoDAOImpl.loadResultados("2017", equipoCoach.getNombre(), Conexion.crearConexion());
            
            session.setAttribute("equipo", equipoCoach);
            session.setAttribute("tablaDePosiciones", tablaDePosiciones);
            session.setAttribute("proximosPartidos",proximosPartidos);
            session.setAttribute("tablaDeResultados", tablaDeResultados);
            
            
            
            
        } catch (Exception e) {
        }
        
        
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        

    }

    @Override
    public void init() throws ServletException {
        super.init(); //To change body of generated methods, choose Tools | Templates.
        unRecorddeequipoDAOImpl = new RecorddeequipoDAOImpl();
        unPartidoDAOImpl = new PartidoDAOImpl();
        unEquipoDAOImpl = new EquipoDAOImpl();
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
