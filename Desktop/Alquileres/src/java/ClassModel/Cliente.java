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
public class Cliente {
     String Nombre_Cliente;
    String Apellido_Cliente;
    String Mail_Cliente;
    String Telefono;
    int Documento;
    int Tipo_Docuento;

    public String getNombre_Cliente() {
        return Nombre_Cliente;
    }

    public void setNombre_Cliente(String Nombre_Cliente) {
        this.Nombre_Cliente = Nombre_Cliente;
    }

    public String getApellido_Cliente() {
        return Apellido_Cliente;
    }

    public void setApellido_Cliente(String Apellido_Cliente) {
        this.Apellido_Cliente = Apellido_Cliente;
    }

    public String getMail_Cliente() {
        return Mail_Cliente;
    }

    public void setMail_Cliente(String Mail_Cliente) {
        this.Mail_Cliente = Mail_Cliente;
    }

    public String getTelefono() {
        return Telefono;
    }

    public void setTelefono(String Telefono) {
        this.Telefono = Telefono;
    }

    public int getDocumento() {
        return Documento;
    }

    public void setDocumento(int Documento) {
        this.Documento = Documento;
    }

    public int getTipo_Docuento() {
        return Tipo_Docuento;
    }

    public void setTipo_Docuento(int Tipo_Docuento) {
        this.Tipo_Docuento = Tipo_Docuento;
    }

    public Cliente(String Nombre_Cliente, String Apellido_Cliente, String Mail_Cliente, String Telefono, int Documento, int Tipo_Docuento) {
        this.Nombre_Cliente = Nombre_Cliente;
        this.Apellido_Cliente = Apellido_Cliente;
        this.Mail_Cliente = Mail_Cliente;
        this.Telefono = Telefono;
        this.Documento = Documento;
        this.Tipo_Docuento = Tipo_Docuento;
    }

    public Cliente() {
    }

    @Override
    public String toString() {
        return   Nombre_Cliente + ", " + Apellido_Cliente + ", Mail: " + Mail_Cliente + ", Tel: " + Telefono + ", Doc: " + Documento;
    }
    
    
}
