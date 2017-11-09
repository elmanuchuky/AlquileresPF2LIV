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
    int Cantidad_de_sillas;
    boolean Tiene_ventana;
    double Precio;

    public double getPrecio() {
        return Precio;
    }

    public void setPrecio(double Precio) {
        this.Precio = Precio;
    }

    public int getPiso() {
        return Piso;
    }

    public void setPiso(int Piso) {
        this.Piso = Piso;
    }

    public int getCantidad_de_sillas() {
        return Cantidad_de_sillas;
    }

    public void setCantidad_de_sillas(int Cantidad_de_sillas) {
        this.Cantidad_de_sillas = Cantidad_de_sillas;
    }

    public boolean getTiene_ventana() {
        return Tiene_ventana;
    }

    public void setTiene_ventana(boolean Tiene_ventana) {
        this.Tiene_ventana = Tiene_ventana;
    }

    public VmSpDetallePuestosAlquiladosCliente() {
    }

    public VmSpDetallePuestosAlquiladosCliente(int Piso, int Cantidad_de_sillas, boolean Tiene_ventana) {
        this.Piso = Piso;
        this.Cantidad_de_sillas = Cantidad_de_sillas;
        this.Tiene_ventana = Tiene_ventana;
    }

    @Override
    public String toString() {
        return "VMSpDatosPuestosAlquilados{" + "Piso=" + Piso + ", Cantidad_de_sillas=" + Cantidad_de_sillas + ", Tiene_ventana=" + Tiene_ventana + '}';
    }
    
    
    
}
