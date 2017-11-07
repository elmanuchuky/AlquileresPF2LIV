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
import Model.VMSpDatosPuestosAlquilados;
import Model.VmSpDetallePuestosAlquiladosCliente;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
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
    
     public boolean AddNewRental(Rental rental){
        boolean isSuccessful = true;
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
            isSuccessful = false;
        }
        return isSuccessful;
    }
     /*
     exec sp_mostrar_datos_puestos_alquilados_por_cliente 1 -- 
     VMSPDatosPuestosAlquilados DEVUELVE ARRAYLIST DE VM
     */
     /*
      int Piso;
    int Cantidad_de_computadoras;
    String Cantidad_de_sillas;
    String Tiene_ventana;
    String Tiene_acesso_a_sala_de_reuniones;
    double Precio_mensual;
    String fecha_de_alquiler;
     */
     public ArrayList<VMSpDatosPuestosAlquilados> GetStallPerRental(int idClient){
        ArrayList<VMSpDatosPuestosAlquilados> s = new ArrayList<VMSpDatosPuestosAlquilados>();
        try {
            Statement stmt = conn.createStatement();
            ResultSet query = stmt.executeQuery("sp_mostrar_datos_puestos_alquilados_por_cliente " + idClient);
            while (query.next()) {
                VMSpDatosPuestosAlquilados vm = new VMSpDatosPuestosAlquilados();
                vm.setPiso(query.getInt("Piso"));
                vm.setCantidad_de_computadoras(query.getInt("Cantidad de computadoras"));
                vm.setCantidad_de_sillas(query.getString("Cantidad sillas"));
                vm.setTiene_ventana(query.getString("Tiene ventana"));
                vm.setTiene_acesso_a_sala_de_reuniones(query.getString("Tiene acesso sala reuniones"));
                vm.setPrecio_mensual(query.getDouble("Precio mensual"));
                vm.setFecha_de_alquiler(query.getString("Fecha de alquiler"));
                s.add(vm);
            }
            query.close();
            stmt.close();
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(ClientManager.class.getName()).log(Level.SEVERE, null, ex);
        }
        return s;
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
