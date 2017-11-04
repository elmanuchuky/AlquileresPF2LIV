/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Acer
 */
public class Client {
    int idClient;
    String clientName;
    String clientSurename;
    String clientMail;
    String phone;
    int document;
    int documentType;

    public Client() {
    }

    public Client(String clientName, String clientSurename, String clientMail, String phone, int document, int documentType) {
        this.clientName = clientName;
        this.clientSurename = clientSurename;
        this.clientMail = clientMail;
        this.phone = phone;
        this.document = document;
        this.documentType = documentType;
    }

    public int getIdClient() {
        return idClient;
    }

    public void setIdClient(int idClient) {
        this.idClient = idClient;
    }

    public String getClientName() {
        return clientName;
    }

    public void setClientName(String clientName) {
        this.clientName = clientName;
    }

    public String getClientSurename() {
        return clientSurename;
    }

    public void setClientSurename(String clientSurename) {
        this.clientSurename = clientSurename;
    }

    public String getClientMail() {
        return clientMail;
    }

    public void setClientMail(String clientMail) {
        this.clientMail = clientMail;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public int getDocument() {
        return document;
    }

    public void setDocument(int document) {
        this.document = document;
    }

    public int getDocumentType() {
        return documentType;
    }

    public void setDocumentType(int documentType) {
        this.documentType = documentType;
    }

    @Override
    public String toString() {
        return "Client{" + "idClient=" + idClient + ", clientName=" + clientName + ", clientSurename=" + clientSurename + ", clientMail=" + clientMail + ", phone=" + phone + ", document=" + document + ", documentType=" + documentType + '}';
    }

}
