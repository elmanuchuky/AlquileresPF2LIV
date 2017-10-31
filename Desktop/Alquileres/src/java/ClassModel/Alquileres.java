/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ClassModel;

import java.util.Date;

/**
 *
 * @author Acer
 */
public class Alquileres {
      int id_cliente;
    int id_puesto;
    int cantidad_computadoras;
    int cantidad_sillas_adicionales;
    int tiene_acceso_sala_reuniones;
    Date fecha;
    boolean estado;

    public boolean isEstado() {
        return estado;
    }

    public void setEstado(boolean estado) {
        this.estado = estado;
    }
    
    

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }
    
    
    public int getId_cliente() {
        return id_cliente;
    }

    public void setId_cliente(int id_cliente) {
        this.id_cliente = id_cliente;
    }

    public int getId_puesto() {
        return id_puesto;
    }

    public void setId_puesto(int id_puesto) {
        this.id_puesto = id_puesto;
    }

    public int getCantidad_computadoras() {
        return cantidad_computadoras;
    }

    public void setCantidad_computadoras(int cantidad_computadoras) {
        this.cantidad_computadoras = cantidad_computadoras;
    }

    public int getCantidad_sillas_adicionales() {
        return cantidad_sillas_adicionales;
    }

    public void setCantidad_sillas_adicionales(int cantidad_sillas_adicionales) {
        this.cantidad_sillas_adicionales = cantidad_sillas_adicionales;
    }

    public int getTiene_acceso_sala_reuniones() {
        return tiene_acceso_sala_reuniones;
    }

    public void setTiene_acceso_sala_reuniones(int tiene_acceso_sala_reuniones) {
        this.tiene_acceso_sala_reuniones = tiene_acceso_sala_reuniones;
    }

    public Alquileres(int id_cliente, int id_puesto, int cantidad_computadoras, int cantidad_sillas_adicionales, int tiene_acceso_sala_reuniones,Date fecha,boolean estado) {
        this.id_cliente = id_cliente;
        this.id_puesto = id_puesto;
        this.cantidad_computadoras = cantidad_computadoras;
        this.cantidad_sillas_adicionales = cantidad_sillas_adicionales;
        this.tiene_acceso_sala_reuniones = tiene_acceso_sala_reuniones;
        this.fecha = fecha;
        this.estado = estado;
    }

    public Alquileres() {
    }

    @Override
    public String toString() {
        return "Alquileres{" + "id_cliente=" + id_cliente + ", id_puesto=" + id_puesto + ", cantidad_computadoras=" + cantidad_computadoras + ", cantidad_sillas_adicionales=" + cantidad_sillas_adicionales + ", tiene_acceso_sala_reuniones=" + tiene_acceso_sala_reuniones + '}';
    }
}
