/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ClassModel;

/**
 *
 * @author Acer
 */
public class Puesto {
    int piso;
    int cantidad_sillas;
    boolean tiene_ventana ;
    boolean disponible;

    public int getPiso() {
        return piso;
    }

    public void setPiso(int piso) {
        this.piso = piso;
    }

    public int getCantidad_sillas() {
        return cantidad_sillas;
    }
    
    public void setCantidad_sillas(int cantidad_sillas) {
        this.cantidad_sillas = cantidad_sillas;
    }

    public boolean isTiene_ventana() {
        return tiene_ventana;
    }
   
    public void setTiene_ventana(boolean tiene_ventana) {
        this.tiene_ventana = tiene_ventana;
    }

    public boolean isDisponible() {
        return disponible;
    }

    public void setDisponible(boolean disponible) {
        this.disponible = disponible;
    }

    public Puesto() {
    }

    public Puesto(int piso, int cantidad_sillas, boolean tiene_ventana, boolean disponible) {
        this.piso = piso;
        this.cantidad_sillas = cantidad_sillas;
        this.tiene_ventana = tiene_ventana;
        this.disponible = disponible;
    }

    @Override
    public String toString() {
        return "Puesto{" + "piso=" + piso + ", cantidad_sillas=" + cantidad_sillas + ", tiene_ventana=" + tiene_ventana + ", disponible=" + disponible + '}';
    }
    
    
}
