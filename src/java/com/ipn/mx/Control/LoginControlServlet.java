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
import com.ipn.mx.DAO.UsuarioDAOImpl;
import com.ipn.mx.Modelo.Equipo;
import com.ipn.mx.Modelo.Partido;
import com.ipn.mx.Modelo.Recorddeequipo;
import com.ipn.mx.Modelo.Usuario;
import com.ipn.mx.Modelo.UsuarioKey;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author manuel
 */
@WebServlet(name = "LoginControlServlet", urlPatterns = {"/LoginControlServlet"})
public class LoginControlServlet extends HttpServlet {

    private UsuarioDAOImpl unUsuarioDAOImpl;
    private List tablaDePosiciones;
    private List tablaDeResultados;
    private List proximosPartidos;

    private String url;

    private Equipo equipoCoach;
    private Usuario unUsuario;

    private RecorddeequipoDAOImpl unRecorddeequipoDAOImpl;
    private PartidoDAOImpl unPartidoDAOImpl;
    private EquipoDAOImpl unEquipoDAOImpl;

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
            out.println("<title>Servlet LoginControlServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoginControlServlet at " + request.getContextPath() + "</h1>");
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
        //processRequest(request, response);
        try {
            String user = request.getParameter("nombre");
            String pass = request.getParameter("pasword");

            unUsuario = unUsuarioDAOImpl.LoadUsuario(user, pass, Conexion.crearConexion());

            if (unUsuario != null) {
                HttpSession session = request.getSession();
                session.setAttribute("usuario", unUsuario);
                
                out.println("UN USUARIO DE PRUEBA "+unUsuario.toString());

                equipoCoach = unEquipoDAOImpl.loadEquipoCoach(unUsuario.getCurp(), Conexion.crearConexion());

                out.println("EQUIPO  "+ equipoCoach.toString());
                
                proximosPartidos = unPartidoDAOImpl.loadProximosPartidos("2017", equipoCoach.getNombre(), Conexion.crearConexion());
                tablaDePosiciones = unRecorddeequipoDAOImpl.load("2017", Conexion.crearConexion());
                tablaDeResultados = unPartidoDAOImpl.loadResultados("2017", equipoCoach.getNombre(), Conexion.crearConexion());

                session.setAttribute("equipo", equipoCoach);
                session.setAttribute("tablaDePosiciones", tablaDePosiciones);
                session.setAttribute("proximosPartidos", proximosPartidos);
                session.setAttribute("tablaDeResultados", tablaDeResultados);

                RequestDispatcher unRequestDispatcher = request.getRequestDispatcher(url);
                unRequestDispatcher.forward(request, response);

            }

        } catch (SQLException ex) {
            out.println("JAJAJAJAJAJAJAJAJAJAJAJA");
            Logger.getLogger(LoginControlServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

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

    @Override
    public void init() throws ServletException {
        super.init(); //To change body of generated methods, choose Tools | Templates.

        unUsuario = new Usuario();
        url = "/TableroDeCoach.jsp";
        equipoCoach = new Equipo();

        tablaDePosiciones = new ArrayList<Recorddeequipo>();
        tablaDeResultados = new ArrayList<Partido>();
        proximosPartidos = new ArrayList<Partido>();

        unUsuarioDAOImpl = new UsuarioDAOImpl();
        unRecorddeequipoDAOImpl = new RecorddeequipoDAOImpl();
        unPartidoDAOImpl = new PartidoDAOImpl();
        unEquipoDAOImpl = new EquipoDAOImpl();

    }

}
