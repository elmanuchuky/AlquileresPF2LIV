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
public class DocumentType {
    int idDocumentType;
    String  documentType;

    public DocumentType() {
    }

    public DocumentType(String documentType) {
        this.documentType = documentType;
    }

    public int getIdDocumentType() {
        return idDocumentType;
    }

    public void setIdDocumentType(int idDocumentType) {
        this.idDocumentType = idDocumentType;
    }

    public String getDocumentType() {
        return documentType;
    }

    public void setDocumentType(String documentType) {
        this.documentType = documentType;
    }

    @Override
    public String toString() {
        return "DocumentType{" + "idDocumentType=" + idDocumentType + ", documentType=" + documentType + '}';
    }

}
