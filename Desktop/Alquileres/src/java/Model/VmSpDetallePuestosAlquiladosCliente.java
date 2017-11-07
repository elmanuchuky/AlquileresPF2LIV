/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Usuario-PC
 */
public class VmSpDetallePuestosAlquiladosCliente {
    int Piso;
    int Cantidad_de_computadoras;
    String Cantidad_de_sillas;
    String Tiene_ventana;
    String Tiene_acesso_a_sala_de_reuniones;
    double Precio_mensual;
    String fecha_de_alquiler;

    public int getPiso() {
        return Piso;
    }

    public void setPiso(int Piso) {
        this.Piso = Piso;
    }

    public int getCantidad_de_computadoras() {
        return Cantidad_de_computadoras;
    }

    public void setCantidad_de_computadoras(int Cantidad_de_computadoras) {
        this.Cantidad_de_computadoras = Cantidad_de_computadoras;
    }

    public String getCantidad_de_sillas() {
        return Cantidad_de_sillas;
    }

    public void setCantidad_de_sillas(String Cantidad_de_sillas) {
        this.Cantidad_de_sillas = Cantidad_de_sillas;
    }

    public String getTiene_ventana() {
        return Tiene_ventana;
    }

    public void setTiene_ventana(String Tiene_ventana) {
        this.Tiene_ventana = Tiene_ventana;
    }

    public String getTiene_acesso_a_sala_de_reuniones() {
        return Tiene_acesso_a_sala_de_reuniones;
    }

    public void setTiene_acesso_a_sala_de_reuniones(String Tiene_acesso_a_sala_de_reuniones) {
        this.Tiene_acesso_a_sala_de_reuniones = Tiene_acesso_a_sala_de_reuniones;
    }

    public double getPrecio_mensual() {
        return Precio_mensual;
    }

    public void setPrecio_mensual(int Precio_mensual) {
        this.Precio_mensual = Precio_mensual;
    }

    public String getFecha_de_alquiler() {
        return fecha_de_alquiler;
    }

    public void setFecha_de_alquiler(String fecha_de_alquiler) {
        this.fecha_de_alquiler = fecha_de_alquiler;
    }

    public VmSpDetallePuestosAlquiladosCliente() {
    }

    public VmSpDetallePuestosAlquiladosCliente(int Piso, int Cantidad_de_computadoras, String Cantidad_de_sillas, String Tiene_ventana, String Tiene_acesso_a_sala_de_reuniones, int Precio_mensual, String fecha_de_alquiler) {
        this.Piso = Piso;
        this.Cantidad_de_computadoras = Cantidad_de_computadoras;
        this.Cantidad_de_sillas = Cantidad_de_sillas;
        this.Tiene_ventana = Tiene_ventana;
        this.Tiene_acesso_a_sala_de_reuniones = Tiene_acesso_a_sala_de_reuniones;
        this.Precio_mensual = Precio_mensual;
        this.fecha_de_alquiler = fecha_de_alquiler;
    }

    @Override
    public String toString() {
        return "VmSpDetallePuestosAlquiladosCliente{" + "Piso=" + Piso + ", Cantidad_de_computadoras=" + Cantidad_de_computadoras + ", Cantidad_de_sillas=" + Cantidad_de_sillas + ", Tiene_ventana=" + Tiene_ventana + ", Tiene_acesso_a_sala_de_reuniones=" + Tiene_acesso_a_sala_de_reuniones + ", Precio_mensual=" + Precio_mensual + ", fecha_de_alquiler=" + fecha_de_alquiler + '}';
    }
    
}
