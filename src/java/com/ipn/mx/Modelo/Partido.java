/*
 * This java source file is generated by DAO4J v1.19
 * Generated on Wed Mar 07 23:27:26 CST 2018
 * For more information, please contact b-i-d@163.com
 * Please check http://sourceforge.net/projects/dao4j/ for the latest version.
 */

package com.ipn.mx.Modelo;

import java.util.Date;

/*
 * For Table Partido
 */
public class Partido implements java.io.Serializable, Cloneable {
    private PartidoKey _key = new PartidoKey();

    /* temporada, PK */
    protected String temporada;

    /* noJornada, PK */
    protected int nojornada;

    /* equipoLocal, PK */
    protected String equipolocal;

    /* equipoVisitante, PK */
    protected String equipovisitante;

    /* fecha */
    protected java.util.Date fecha;

    /* hora */
    protected java.util.Date hora;

    /* marcadorLocal */
    protected int marcadorlocal;

    /* marcadorVisitante */
    protected int marcadorvisitante;

    /* partidoFinalizado */
    protected boolean partidofinalizado;
    
    public Partido(){
        
    }

    public Partido(String temporada, int noJornada,String equipolocal,String equipovisitante,Date fecha,Date hora,boolean partidoFinalizado){
        
        this.temporada = temporada;
        this.nojornada = noJornada;
        this.equipolocal = equipolocal;
        this.equipovisitante = equipovisitante;
        this.fecha = fecha;
        this.hora = hora;
        this.partidofinalizado = partidoFinalizado;
        
    }
    
    /* Return the key object. */
    public PartidoKey getKeyObject() {
        return _key;
    }

    /* temporada, PK */
    public String getTemporada() {
        return temporada;
    }

    /* temporada, PK */
    public void setTemporada(String temporada) {
        this.temporada = temporada;
        _key.setTemporada(temporada);
    }

    /* noJornada, PK */
    public int getNojornada() {
        return nojornada;
    }

    /* noJornada, PK */
    public void setNojornada(int nojornada) {
        this.nojornada = nojornada;
        _key.setNojornada(nojornada);
    }

    /* equipoLocal, PK */
    public String getEquipolocal() {
        return equipolocal;
    }

    /* equipoLocal, PK */
    public void setEquipolocal(String equipolocal) {
        this.equipolocal = equipolocal;
        _key.setEquipolocal(equipolocal);
    }

    /* equipoVisitante, PK */
    public String getEquipovisitante() {
        return equipovisitante;
    }

    /* equipoVisitante, PK */
    public void setEquipovisitante(String equipovisitante) {
        this.equipovisitante = equipovisitante;
        _key.setEquipovisitante(equipovisitante);
    }

    /* fecha */
    public java.util.Date getFecha() {
        return fecha;
    }

    /* fecha */
    public void setFecha(java.util.Date fecha) {
        this.fecha = fecha;
    }

    /* hora */
    public java.util.Date getHora() {
        return hora;
    }

    /* hora */
    public void setHora(java.util.Date hora) {
        this.hora = hora;
    }

    /* marcadorLocal */
    public int getMarcadorlocal() {
        return marcadorlocal;
    }

    /* marcadorLocal */
    public void setMarcadorlocal(int marcadorlocal) {
        this.marcadorlocal = marcadorlocal;
    }

    /* marcadorVisitante */
    public int getMarcadorvisitante() {
        return marcadorvisitante;
    }

    /* marcadorVisitante */
    public void setMarcadorvisitante(int marcadorvisitante) {
        this.marcadorvisitante = marcadorvisitante;
    }

    /* partidoFinalizado */
    public boolean getPartidofinalizado() {
        return partidofinalizado;
    }

    /* partidoFinalizado */
    public void setPartidofinalizado(boolean partidofinalizado) {
        this.partidofinalizado = partidofinalizado;
    }

    /* Indicates whether some other object is "equal to" this one. */
    public boolean equals(Object obj) {
        if (this == obj)
            return true;

        if (obj == null || !(obj instanceof Partido))
            return false;

        Partido bean = (Partido) obj;

        if (this.temporada == null) {
            if (bean.temporada != null)
                return false;
        }
        else if (!this.temporada.equals(bean.temporada)) 
            return false;

        if (this.nojornada != bean.nojornada)
            return false;

        if (this.equipolocal == null) {
            if (bean.equipolocal != null)
                return false;
        }
        else if (!this.equipolocal.equals(bean.equipolocal)) 
            return false;

        if (this.equipovisitante == null) {
            if (bean.equipovisitante != null)
                return false;
        }
        else if (!this.equipovisitante.equals(bean.equipovisitante)) 
            return false;

        if (this.fecha == null) {
            if (bean.fecha != null)
                return false;
        }
        else if (!this.fecha.equals(bean.fecha)) 
            return false;

        if (this.hora == null) {
            if (bean.hora != null)
                return false;
        }
        else if (!this.hora.equals(bean.hora)) 
            return false;

        if (this.marcadorlocal != bean.marcadorlocal)
            return false;

        if (this.marcadorvisitante != bean.marcadorvisitante)
            return false;

        if (this.partidofinalizado != bean.partidofinalizado)
            return false;

        return true;
    }

    /* Creates and returns a copy of this object. */
    public Object clone()
    {
        Partido bean = new Partido();
        bean.temporada = this.temporada;
        bean.nojornada = this.nojornada;
        bean.equipolocal = this.equipolocal;
        bean.equipovisitante = this.equipovisitante;
        if (this.fecha != null)
            bean.fecha = (java.util.Date) this.fecha.clone();
        if (this.hora != null)
            bean.hora = (java.util.Date) this.hora.clone();
        bean.marcadorlocal = this.marcadorlocal;
        bean.marcadorvisitante = this.marcadorvisitante;
        bean.partidofinalizado = this.partidofinalizado;
        return bean;
    }

    /* Returns a string representation of the object. */
    public String toString() {
        String sep = "\r\n";
        StringBuffer sb = new StringBuffer();
        sb.append(this.getClass().getName()).append(sep);
        sb.append("[").append("temporada").append(" = ").append(temporada).append("]").append(sep);
        sb.append("[").append("nojornada").append(" = ").append(nojornada).append("]").append(sep);
        sb.append("[").append("equipolocal").append(" = ").append(equipolocal).append("]").append(sep);
        sb.append("[").append("equipovisitante").append(" = ").append(equipovisitante).append("]").append(sep);
        sb.append("[").append("fecha").append(" = ").append(fecha).append("]").append(sep);
        sb.append("[").append("hora").append(" = ").append(hora).append("]").append(sep);
        sb.append("[").append("marcadorlocal").append(" = ").append(marcadorlocal).append("]").append(sep);
        sb.append("[").append("marcadorvisitante").append(" = ").append(marcadorvisitante).append("]").append(sep);
        sb.append("[").append("partidofinalizado").append(" = ").append(partidofinalizado).append("]").append(sep);
        return sb.toString();
    }
}