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
public class VMSpDatosCliente {
    String Apellido;
    String Nombre;
    String Mail;
    String Telefono;
    String Tipo_documento;
    int Documento; 
    double Importe_mensual;

    public String getApellido() {
        return Apellido;
    }

    public void setApellido(String Apellido) {
        this.Apellido = Apellido;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getMail() {
        return Mail;
    }

    public void setMail(String Mail) {
        this.Mail = Mail;
    }

    public String getTelefono() {
        return Telefono;
    }

    public void setTelefono(String Telefono) {
        this.Telefono = Telefono;
    }

    public String getTipo_documento() {
        return Tipo_documento;
    }

    public void setTipo_documento(String Tipo_documento) {
        this.Tipo_documento = Tipo_documento;
    }

    public int getDocumento() {
        return Documento;
    }

    public void setDocumento(int Documento) {
        this.Documento = Documento;
    }

    public double getImporte_mensual() {
        return Importe_mensual;
    }

    public void setImporte_mensual(int Importe_mensual) {
        this.Importe_mensual = Importe_mensual;
    }

    public VMSpDatosCliente() {
    }

    public VMSpDatosCliente(String Apellido, String Nombre, String Mail, String Telefono, String Tipo_documento, int Documento, int Importe_mensual) {
        this.Apellido = Apellido;
        this.Nombre = Nombre;
        this.Mail = Mail;
        this.Telefono = Telefono;
        this.Tipo_documento = Tipo_documento;
        this.Documento = Documento;
        this.Importe_mensual = Importe_mensual;
    }

    @Override
    public String toString() {
        return "VMSpDetalleCliente{" + "Apellido=" + Apellido + ", Nombre=" + Nombre + ", Mail=" + Mail + ", Telefono=" + Telefono + ", Tipo_documento=" + Tipo_documento + ", Documento=" + Documento + ", Importe_mensual=" + Importe_mensual + '}';
    }

    
    
    
    
    
    
    
    
    
    
}
