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
     String Cliente;
     String Documento;
     String Mail;
     String Telefono;
     int Importe_mensual;

    public String getCliente() {
        return Cliente;
    }

    public void setCliente(String Cliente) {
        this.Cliente = Cliente;
    }

    public String getDocumento() {
        return Documento;
    }

    public void setDocumento(String Documento) {
        this.Documento = Documento;
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

    public int getImporte_mensual() {
        return Importe_mensual;
    }

    public void setImporte_mensual(int Importe_mensual) {
        this.Importe_mensual = Importe_mensual;
    }

    public VMSpDatosCliente() {
    }

    public VMSpDatosCliente(String Cliente, String Documento, String Mail, String Telefono, int Importe_mensual) {
        this.Cliente = Cliente;
        this.Documento = Documento;
        this.Mail = Mail;
        this.Telefono = Telefono;
        this.Importe_mensual = Importe_mensual;
    }

    @Override
    public String toString() {
        return "VMSpDatosCliente{" + "Cliente=" + Cliente + ", Documento=" + Documento + ", Mail=" + Mail + ", Telefono=" + Telefono + ", Importe_mensual=" + Importe_mensual + '}';
    }
    
}
