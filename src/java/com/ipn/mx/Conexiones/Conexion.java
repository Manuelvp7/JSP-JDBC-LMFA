/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ipn.mx.Conexiones;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author manuel
 */
public class Conexion {

    private Connection conexion;

    public static Connection crearConexion() {

        Connection myConn = null;
        try {

            myConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ligadeamericano?autoReconnect=true&useSSL=false", "root", "manolito130");
            if (myConn != null) {
                System.out.println("CONNECTION SUCCES!!!");
                return myConn;
            }

        } catch (Exception exc) {
            exc.printStackTrace();
        }

        return null;

    }

    public void cerrarConexion(Connection conn) throws SQLException {

        conn.close();

    }

}
