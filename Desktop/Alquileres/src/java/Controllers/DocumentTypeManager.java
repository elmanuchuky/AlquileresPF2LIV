/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Model.Client;
import Model.DocumentType;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Fernando M. de Lima
 */
public class DocumentTypeManager {

    private Connection conn; 

    public DocumentTypeManager() {
        DataAccess da = new DataAccess();
        try {
            conn = DriverManager.getConnection(da.getCONN_STR(), da.getUSER(), da.getPASS());
        } catch (SQLException ex) {
            Logger.getLogger(ClientManager.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public ArrayList<DocumentType> GetTypes(){
    ArrayList<DocumentType> types = new ArrayList<DocumentType>();
    try {
        Statement stmt = conn.createStatement();
        ResultSet query = stmt.executeQuery("SELECT td.id_tipo_documento id, td.documento documento FROM Tipos_documento td");
        while (query.next()) {
            DocumentType dt = new DocumentType();
            dt.setDocumentType(query.getString("documento"));
            dt.setIdDocumentType(query.getInt("id"));
            types.add(dt);
        }
        query.close();
        stmt.close();
        conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(ClientManager.class.getName()).log(Level.SEVERE, null, ex);
        }
    return types;
    }
    
}
