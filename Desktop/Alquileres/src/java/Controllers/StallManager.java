/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Model.Stall;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import Controllers.DataAccess;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;


public class StallManager {
    private Connection conn; 
    /*
       int piso;
    int cantidad_sillas;
    boolean tiene_ventana ;
    boolean disponible;
    sp_insert_puesto
    
    */

    public StallManager() {
        DataAccess da = new DataAccess();
        try {
            conn = DriverManager.getConnection(da.getCONN_STR(), da.getUSER(), da.getPASS());
        } catch (SQLException ex) {
            Logger.getLogger(StallManager.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    
    public boolean AddNewStall(Stall stall){
        boolean isSuccessful = true;
        try {
            PreparedStatement stmt = conn.prepareStatement("EXEC sp_insert_puesto ?, ?, ?");
            stmt.setInt(1, stall.getFloor());
            stmt.setInt(2, stall.getChairsAmount());
            stmt.setBoolean(3, stall.isWithWindows());
            stmt.executeUpdate();
            stmt.close();
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(StallManager.class.getName()).log(Level.SEVERE, null, ex);
            isSuccessful = false;
        }
        return isSuccessful;
    }

}

