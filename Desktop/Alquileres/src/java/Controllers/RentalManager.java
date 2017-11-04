/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;
import Model.Rental;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import Controllers.DataAccess;
import java.sql.Date;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class RentalManager {
    private Connection conn;
    /*
     int id_cliente;
    int id_puesto;
    int cantidad_computadoras;
    int cantidad_sillas_adicionales;
    boolean tiene_acceso_sala_reuniones;
    Date fecha;
    boolean estado;
    */

    public RentalManager() {
        DataAccess da = new DataAccess();
        try {
            conn = DriverManager.getConnection(da.getCONN_STR(), da.getUSER(), da.getPASS());
        } catch (SQLException ex) {
            Logger.getLogger(RentalManager.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
     public void AddNewRental(Rental rental){
        try {
            PreparedStatement stmt = conn.prepareStatement("EXEC sp_insert_alquiler ?, ?, ?, ?, ?");
            stmt.setInt(1, rental.getClient().getIdClient());
            stmt.setInt(2, rental.getStall().getIdStall());
            stmt.setInt(3, rental.getComputersAmount());
            stmt.setInt(4, rental.getExtraChairsAmount());
            stmt.setBoolean(5, rental.isHasRoomAccess());
            stmt.executeUpdate();
            stmt.close();
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(RentalManager.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
      public void ModifyRental(Rental rental) throws SQLException {
        PreparedStatement stmt = conn.prepareStatement("EXEC sp_update_alquiler ?, ?, ?");
        stmt.setInt(1, rental.getComputersAmount());
        stmt.setInt(2, rental.getExtraChairsAmount());
        stmt.setBoolean(3, rental.isHasRoomAccess());
        stmt.executeUpdate();
        stmt.close();
        conn.close();
    }
}
