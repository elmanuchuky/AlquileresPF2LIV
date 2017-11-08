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
public class VMVwTotalPorPiso {
    int floor;
    double total;

    public int getFloor() {
        return floor;
    }

    public void setFloor(int floor) {
        this.floor = floor;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public VMVwTotalPorPiso() {
    }

    public VMVwTotalPorPiso(int id, double total) {
        this.floor = id;
        this.total = total;
    }

    @Override
    public String toString() {
        return "VMVwTotalPorPiso{" + "floor=" + floor + ", total=" + total + '}';
    }
}
