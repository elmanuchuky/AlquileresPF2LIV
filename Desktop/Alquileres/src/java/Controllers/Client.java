/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import ClassModel.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import Controllers.AcessData;
import java.sql.SQLException;
public class Client {
      public static final String CONN_STR = "jdbc:sqlserver://USUARIO:1433;databaseName=TP_Alquileres_LabIV";
    private String USER = "esclavo";
    private String PASS = "1234";
    private Connection conn; 
    /*
       String Nombre_Cliente;
    String Apellido_Cliente;
    String Mail_Cliente;
    String Telefono;
    int Documento;
    int Tipo_Docuento;
*/
    public void AddNewClient(Cliente client) throws SQLException {
        conn = DriverManager.getConnection(CONN_STR, USER, PASS);
        PreparedStatement stmt = conn.prepareStatement("EXEC sp_insert_cliente (?, ?, ?, ?, ?, ?)");
        stmt.setString(1, client.getNombre_Cliente());
        stmt.setString(2, client.getApellido_Cliente());
        stmt.setString(3, client.getMail_Cliente());
        stmt.setString(4, client.getTelefono());
        stmt.setInt(5, client.getDocumento());
        stmt.setInt(6,client.getTipo_Docuento());
        stmt.executeUpdate();
        stmt.close();
        conn.close();
    }
    
}
