/*
 * This java source file is generated by DAO4J v1.19
 * Generated on Mon Mar 05 14:30:46 CST 2018
 * For more information, please contact b-i-d@163.com
 * Please check http://sourceforge.net/projects/dao4j/ for the latest version.
 */

package com.ipn.mx.DAO;

import com.ipn.mx.Modelo.Posicion;
import com.ipn.mx.Modelo.PosicionKey;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.SQLException;
import java.sql.Types;
import java.util.List;
import java.util.ArrayList;


/**
 * This class provides methods to populate DB Table of Posicion
 */
public class PosicionDAOImpl{
    /* SQL to insert data */
    private static final String SQL_INSERT =
        "INSERT INTO Posicion ("
        + "posicion"
        + ") VALUES (?)";

    /* SQL to select data */
    private static final String SQL_SELECT_ALL = 
            "SELECT * FROM Posicion";
    
    private static final String SQL_SELECT =
        "SELECT "
        + "posicion "
        + "FROM Posicion WHERE "
        + "posicion = ?";

    /* SQL to update data */
    private static final String SQL_UPDATE =
        "UPDATE Posicion SET "
        + "WHERE "
        + "posicion = ?";

    /* SQL to delete data */
    private static final String SQL_DELETE =
        "DELETE FROM Posicion WHERE "
        + "posicion = ?";

    /**
     * Create a new record in Database.
     * @param bean   The Object to be inserted.
     * @param conn   JDBC Connection.
     * @exception    SQLException if something is wrong.
     */
    public void create(Posicion bean, Connection conn) throws SQLException {
        PreparedStatement ps = null;
        try {
            ps = conn.prepareStatement(SQL_INSERT);
            ps.setString(1, bean.getPosicion());
            ps.executeUpdate();
        }finally {
            close(ps);
        }
    }

    /**
     * Retrive a record from Database.
     * @param beanKey   The PK Object to be retrived.
     * @param conn      JDBC Connection.
     * @exception       SQLException if something is wrong.
     */
    
        
    public List load(Connection conn) throws SQLException {
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = conn.prepareStatement(SQL_SELECT_ALL);
            
            rs = ps.executeQuery();
            List results = getResults(rs);
            if (results.size() > 0)
                return results;
            else
                return null;
        }finally {
            close(rs);
            close(ps);
        }
    }
    
    public Posicion load(PosicionKey key, Connection conn) throws SQLException {
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = conn.prepareStatement(SQL_SELECT);
            ps.setString(1, key.getPosicion());
            rs = ps.executeQuery();
            List results = getResults(rs);
            if (results.size() > 0)
                return (Posicion) results.get(0);
            else
                return null;
        }finally {
            close(rs);
            close(ps);
        }
    }

    /**
     * Update a record in Database.
     * @param bean   The Object to be saved.
     * @param conn   JDBC Connection.
     * @exception    SQLException if something is wrong.
     */
    public void update(Posicion bean, Connection conn) throws SQLException {
        PreparedStatement ps = null;
        try {
            ps = conn.prepareStatement(SQL_UPDATE);
            ps.setString(1, bean.getPosicion());
            ps.executeUpdate();
        }finally {
            close(ps);
        }
    }

    /**
     * Create a new record in Database.
     * @param bean   The PK Object to be deleted.
     * @param conn   JDBC Connection.
     * @exception    SQLException if something is wrong.
     */
    public void delete(PosicionKey key, Connection conn) throws SQLException {
        PreparedStatement ps = null;
        try {
            ps = conn.prepareStatement(SQL_DELETE);
            ps.setString(1, key.getPosicion());
            ps.executeUpdate();
        }finally {
            close(ps);
        }
    }
    
    /**
     * Populate the ResultSet.
     * @param rs     The ResultSet.
     * @return       The Object to retrieve from DB.
     * @exception    SQLException if something is wrong.
     */
    protected List<Posicion> getResults(ResultSet rs) throws SQLException {
        List results = new ArrayList<Posicion>();
        while (rs.next()) {
            Posicion bean = new Posicion();
            bean.setPosicion(rs.getString("posicion"));
            results.add(bean);
        }
        return results;
    }

    /**
     * Close JDBC Statement.
     * @param stmt  Statement to be closed.
     */
    protected void close(Statement stmt) {
        if (stmt != null) {
            try {
                stmt.close();
            }catch(SQLException e){}
        }
    }

    /**
     * Close JDBC ResultSet.
     * @param rs  ResultSet to be closed.
     */
    protected void close(ResultSet rs) {
        if (rs != null) {
            try {
                rs.close();
            }catch(SQLException e){}
        }
    }
}