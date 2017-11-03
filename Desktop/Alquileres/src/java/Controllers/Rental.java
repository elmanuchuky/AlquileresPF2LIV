/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;
import ClassModel.Alquileres;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import Controllers.AcessData;
import java.sql.Date;
import java.sql.SQLException;

public class Rental {
     public static final String CONN_STR = "jdbc:sqlserver://USUARIO:1433;databaseName=TP_Alquileres_LabIV";
    private String USER = "esclavo";
    private String PASS = "1234";
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
     public void AddNewRental(Alquileres rental) throws SQLException {
        conn = DriverManager.getConnection(CONN_STR, USER, PASS);
        PreparedStatement stmt = conn.prepareStatement("EXEC sp_insert_alquiler (?, ?, ?, ?, ?, ?, ?)");
        stmt.setInt         (1, rental.getId_cliente() );
        stmt.setInt         (2, rental.getId_puesto());
        stmt.setInt         (3, rental.getCantidad_computadoras());
        stmt.setInt         (4, rental.getCantidad_sillas_adicionales());
        stmt.setBoolean     (5, rental.getTiene_acceso_sala_reuniones());
        stmt.setDate        (6, (Date)rental.getFecha());
        stmt.setBoolean     (7, rental.isEstado());
        stmt.executeUpdate();
        stmt.close();
        conn.close();
    }
      public void ModifyRental(Alquileres rental) throws SQLException {
        conn = DriverManager.getConnection(CONN_STR, USER, PASS);
        PreparedStatement stmt = conn.prepareStatement("EXEC tg_actualizar_disponibilidad_puesto SET id_cliente = ?, id_puesto = ?, cantidad_computadoras = ?, cantidad_sillas_adicionales = ?, tiene_acesso_sala_reuniones = ?, fecha = ?  WHERE id = ?");
        stmt.setInt         (1, rental.getId_cliente() );
        stmt.setInt         (2, rental.getId_puesto());
        stmt.setInt         (3, rental.getCantidad_computadoras());
        stmt.setInt         (4, rental.getCantidad_sillas_adicionales());
        stmt.setBoolean     (5, rental.getTiene_acceso_sala_reuniones());
        stmt.setDate        (6, (Date)rental.getFecha());
        stmt.setBoolean     (7, rental.isEstado());
        stmt.executeUpdate();
        stmt.close();
        conn.close();
    }
}
