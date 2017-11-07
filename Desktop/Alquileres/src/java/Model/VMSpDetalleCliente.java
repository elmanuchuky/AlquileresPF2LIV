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
public class VMSpDetalleCliente {
   
    
    String Cliente;
     String Documento;
     String Mail;
     String Telefono;
     double Importe_mensual;

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

    public double getImporte_mensual() {
        return Importe_mensual;
    }

    public void setImporte_mensual(int Importe_mensual) {
        this.Importe_mensual = Importe_mensual;
    }

    public VMSpDetalleCliente() {
    }

    public VMSpDetalleCliente(String Cliente, String Documento, String Mail, String Telefono, int Importe_mensual) {
        this.Cliente = Cliente;
        this.Documento = Documento;
        this.Mail = Mail;
        this.Telefono = Telefono;
        this.Importe_mensual = Importe_mensual;
    }

    
   
    
    }
