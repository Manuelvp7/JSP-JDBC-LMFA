/*
 * This java source file is generated by DAO4J v1.19
 * Generated on Sun Feb 25 05:11:23 CST 2018
 * For more information, please contact b-i-d@163.com
 * Please check http://sourceforge.net/projects/dao4j/ for the latest version.
 */

package com.ipn.mx.Modelo;

public class JugadorKey implements java.io.Serializable, Cloneable {
    /* CURP */
    protected String curp;

    /* CURP */
    public String getCurp() {
        return curp;
    }

    /* CURP */
    public void setCurp(String curp) {
        this.curp = curp;
    }

    /* Calculate hash code */
    public int hashCode() {
        int hashCode = 0;
        if (curp != null)  
            hashCode += curp.hashCode();
        return hashCode;
    }
    
    /* Indicates whether some other object is "equal to" this one. */
    public boolean equals(Object obj) {
        if (this == obj)
            return true;

        if (obj == null || !(obj instanceof JugadorKey))
            return false;

        JugadorKey key = (JugadorKey) obj;

        if (this.curp == null) {
            if (key.curp != null)
                return false;
        }
        else if (!this.curp.equals(key.curp)) 
            return false;

        return true;
    }

    /* Creates and returns a copy of this object. */
    public Object clone()
    {
        JugadorKey key = new JugadorKey();
        key.curp = this.curp;
        return key;
    }

    /* Returns a string representation of the object. */
    public String toString() {
        String sep = "\r\n";
        StringBuffer sb = new StringBuffer();
        sb.append(this.getClass().getName()).append(sep);
        sb.append("[").append("curp").append(" = ").append(curp).append("]");
        return sb.toString();
    }
}