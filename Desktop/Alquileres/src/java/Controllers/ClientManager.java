/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Model.Client;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import Controllers.DataAccess;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ClientManager {
        private Connection conn; 
/*
    String Nombre_Cliente;
    String Apellido_Cliente;
    String Mail_Cliente;
    String Telefono;
    int Documento;
    int Tipo_Docuento;
*/

    public ClientManager() {
        DataAccess da = new DataAccess();
            try {
                conn = DriverManager.getConnection(da.getCONN_STR(), da.getUSER(), da.getPASS());
            } catch (SQLException ex) {
                Logger.getLogger(ClientManager.class.getName()).log(Level.SEVERE, null, ex);
            }
    }
        
    public void AddNewClient(Client client){
            try {
                PreparedStatement stmt = conn.prepareStatement("EXEC sp_insert_cliente ?, ?, ?, ?, ?, ?");
                stmt.setString(1, client.getClientName());
                stmt.setString(2, client.getClientSurename());
                stmt.setString(3, client.getClientMail());
                stmt.setString(4, client.getPhone());
                stmt.setInt(5, client.getDocument());
                stmt.setInt(6,client.getDocumentType());
                stmt.executeUpdate();
                stmt.close();
                conn.close();
            } catch (SQLException ex) {
                Logger.getLogger(ClientManager.class.getName()).log(Level.SEVERE, null, ex);
            }
    }
    
}
