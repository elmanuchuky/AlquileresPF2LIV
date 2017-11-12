/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Fernando M. de Lima
 */
public class VMAvailableStalls {
    int id;
    int floor;
    int chairsAmount;
    boolean withWindows;
    double basePrice;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    public int getFloor() {
        return floor;
    }

    public void setFloor(int floor) {
        this.floor = floor;
    }

    public int getChairsAmount() {
        return chairsAmount;
    }

    public void setChairsAmount(int chairsAmount) {
        this.chairsAmount = chairsAmount;
    }

    public boolean isWithWindows() {
        return withWindows;
    }

    public void setWithWindows(boolean withWindows) {
        this.withWindows = withWindows;
    }

    public double getBasePrice() {
        return basePrice;
    }

    public void setBasePrice(double basePrice) {
        this.basePrice = basePrice;
    }

    public VMAvailableStalls() {
    }

    public VMAvailableStalls(int id, int floor, int chairsAmount, boolean withWindows, double basePrice) {
        this.id = id;
        this.floor = floor;
        this.chairsAmount = chairsAmount;
        this.withWindows = withWindows;
        this.basePrice = basePrice;
    }

    @Override
    public String toString() {
        String windows = "Sin";
        if (withWindows)
            windows = "Con";
        return "Piso " + floor + ", Sillas " + chairsAmount + ", " + windows + " ventana " + ", Precio Base; $" + basePrice;
    }
    
    
}
