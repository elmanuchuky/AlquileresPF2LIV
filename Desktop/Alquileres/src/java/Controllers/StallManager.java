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
import Model.VmSpDetallePuestosAlquiladosCliente;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
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
   /*
    exec sp_detalles_de_puestos_alquilados_por_cliente 1 -- 
    VMSPDetallePuestosAlquiladosCliente DEVUELVE ARRAYLIST DE VM
    */
     public ArrayList<VmSpDetallePuestosAlquiladosCliente> GetStallPerClient(int idClient){
        ArrayList<VmSpDetallePuestosAlquiladosCliente> stalls = new ArrayList<VmSpDetallePuestosAlquiladosCliente>();
        try {
            Statement stmt = conn.createStatement();
            ResultSet query = stmt.executeQuery("sp_detalles_de_puestos_alquilados_por_cliente " + idClient);
            while (query.next()) {
                VmSpDetallePuestosAlquiladosCliente vm = new VmSpDetallePuestosAlquiladosCliente();
                vm.setPiso(query.getInt("Piso"));
                vm.setCantidad_de_sillas(query.getInt("Cantidad sillas"));
                vm.setTiene_ventana(query.getInt("Tiene ventana"));
                stalls.add(vm);
            }
            query.close();
            stmt.close();
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(ClientManager.class.getName()).log(Level.SEVERE, null, ex);
        }
        return stalls;
    }
     
    public ArrayList<Stall> GetStalls(){
        ArrayList<Stall> stalls = new ArrayList<Stall>();
        try {
            Statement stmt = conn.createStatement();
            ResultSet query = stmt.executeQuery("SELECT s.id_puesto id, s.piso piso, s.Cantidad_sillas sillas, s.tiene_ventana ventana, s.disponible disponible  FROM Puestos s");
            while (query.next()) {
                Stall s = new Stall();
                s.setFloor(query.getInt("Piso"));
                s.setChairsAmount(query.getInt("Cantidad sillas"));
                s.setWithWindows(query.getBoolean("Tiene ventana"));
                s.setAvailable(query.getBoolean("Disponible"));
                stalls.add(s);
            }
            query.close();
            stmt.close();
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(ClientManager.class.getName()).log(Level.SEVERE, null, ex);
        }
        return stalls;
    }
/*exec sp_total_recaudado_por_piso 1 -- no es un VM, 
es un metodo del gestor solamente DEVUELVE UN DOUBLE
*/
    
    
}

