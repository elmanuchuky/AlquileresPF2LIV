/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import java.sql.Connection;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author Usuario-PC
 */
public class DataAccess {
    String CONN_STR; 
    String driver; 
    String USER; 
    String PASS; 

    public DataAccess() {
        CONN_STR = "jdbc:sqlserver://LAPTOP-5AEIROHB\\SQLEXPRESS;databaseName=TP_Alquileres_LabIV";
        driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver"; 
        USER = "sa"; 
        PASS = "1234"; 
        try {
            Class.forName(driver);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public String getCONN_STR() {
        return CONN_STR;
    }

    public void setCONN_STR(String CONN_STR) {
        this.CONN_STR = CONN_STR;
    }

    public String getDriver() {
        return driver;
    }

    public void setDriver(String driver) {
        this.driver = driver;
    }

    public String getUSER() {
        return USER;
    }

    public void setUSER(String USER) {
        this.USER = USER;
    }

    public String getPASS() {
        return PASS;
    }

    public void setPASS(String PASS) {
        this.PASS = PASS;
    }
    
}
