/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Acer
 */
public class Stall {
    int idStall;
    int floor;
    int chairsAmount;
    boolean withWindows;
    boolean available;

    public Stall() {
    }

    public Stall(int floor, int chairsAmount, boolean withWindows, boolean available) {
        this.floor = floor;
        this.chairsAmount = chairsAmount;
        this.withWindows = withWindows;
        this.available = available;
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

    public boolean isAvailable() {
        return available;
    }

    public void setAvailable(boolean available) {
        this.available = available;
    }

    public int getIdStall() {
        return idStall;
    }

    public void setIdStall(int idStall) {
        this.idStall = idStall;
    }

    @Override
    public String toString() {
        return "Stall{" + "idStall=" + idStall + ", floor=" + floor + ", chairsAmount=" + chairsAmount + ", withWindows=" + withWindows + ", available=" + available + '}';
    }

    
}
