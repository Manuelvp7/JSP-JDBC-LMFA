/*
 * This java source file is generated by DAO4J v1.19
 * Generated on Sun Feb 25 05:11:23 CST 2018
 * For more information, please contact b-i-d@163.com
 * Please check http://sourceforge.net/projects/dao4j/ for the latest version.
 */

package com.ipn.mx.Modelo;

/*
 * For Table Equipo
 */
public class Equipo implements java.io.Serializable, Cloneable {
    private EquipoKey _key = new EquipoKey();

    /* nombre, PK */
    protected String nombre;

    /* propietarioCURP */
    protected String propietariocurp;

    /* coachCURP */
    protected String coachcurp;

    /* estadio */
    protected String estadio;

    /* Return the key object. */
    public EquipoKey getKeyObject() {
        return _key;
    }

    /* nombre, PK */
    public String getNombre() {
        return nombre;
    }

    /* nombre, PK */
    public void setNombre(String nombre) {
        this.nombre = nombre;
        _key.setNombre(nombre);
    }

    /* propietarioCURP */
    public String getPropietariocurp() {
        return propietariocurp;
    }

    /* propietarioCURP */
    public void setPropietariocurp(String propietariocurp) {
        this.propietariocurp = propietariocurp;
    }

    /* coachCURP */
    public String getCoachcurp() {
        return coachcurp;
    }

    /* coachCURP */
    public void setCoachcurp(String coachcurp) {
        this.coachcurp = coachcurp;
    }

    /* estadio */
    public String getEstadio() {
        return estadio;
    }

    /* estadio */
    public void setEstadio(String estadio) {
        this.estadio = estadio;
    }

    /* Indicates whether some other object is "equal to" this one. */
    public boolean equals(Object obj) {
        if (this == obj)
            return true;

        if (obj == null || !(obj instanceof Equipo))
            return false;

        Equipo bean = (Equipo) obj;

        if (this.nombre == null) {
            if (bean.nombre != null)
                return false;
        }
        else if (!this.nombre.equals(bean.nombre)) 
            return false;

        if (this.propietariocurp == null) {
            if (bean.propietariocurp != null)
                return false;
        }
        else if (!this.propietariocurp.equals(bean.propietariocurp)) 
            return false;

        if (this.coachcurp == null) {
            if (bean.coachcurp != null)
                return false;
        }
        else if (!this.coachcurp.equals(bean.coachcurp)) 
            return false;

        if (this.estadio == null) {
            if (bean.estadio != null)
                return false;
        }
        else if (!this.estadio.equals(bean.estadio)) 
            return false;

        return true;
    }

    /* Creates and returns a copy of this object. */
    public Object clone()
    {
        Equipo bean = new Equipo();
        bean.nombre = this.nombre;
        bean.propietariocurp = this.propietariocurp;
        bean.coachcurp = this.coachcurp;
        bean.estadio = this.estadio;
        return bean;
    }

    /* Returns a string representation of the object. */
    public String toString() {
        String sep = "\r\n";
        StringBuffer sb = new StringBuffer();
        sb.append(this.getClass().getName()).append(sep);
        sb.append("[").append("nombre").append(" = ").append(nombre).append("]").append(sep);
        sb.append("[").append("propietariocurp").append(" = ").append(propietariocurp).append("]").append(sep);
        sb.append("[").append("coachcurp").append(" = ").append(coachcurp).append("]").append(sep);
        sb.append("[").append("estadio").append(" = ").append(estadio).append("]").append(sep);
        return sb.toString();
    }
}