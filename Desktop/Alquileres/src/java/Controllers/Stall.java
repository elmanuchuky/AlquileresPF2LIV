/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import ClassModel.Puesto;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import Controllers.AcessData;
import java.sql.SQLException;


public class Stall {
   public static final String CONN_STR = "jdbc:sqlserver://USUARIO:1433;databaseName=TP_Alquileres_LabIV";
    private String USER = "esclavo";
    private String PASS = "1234";
    private Connection conn; 
    /*
       int piso;
    int cantidad_sillas;
    boolean tiene_ventana ;
    boolean disponible;
    sp_insert_puesto
*/
    public void AddNewStall(Puesto stall) throws SQLException {
        conn = DriverManager.getConnection(CONN_STR, USER, PASS);
        PreparedStatement stmt = conn.prepareStatement("EXEC sp_insert_puesto (?, ?, ?, ?)");
        stmt.setInt(1, stall.getPiso() );
        stmt.setInt(2, stall.getCantidad_sillas());
        stmt.setBoolean(3, stall.isTiene_ventana());
        stmt.setBoolean(4, stall.isDisponible());
        stmt.executeUpdate();
        stmt.close();
        conn.close();
    }

}

