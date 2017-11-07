/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.util.Date;

/**
 *
 * @author Acer
 */
public class Rental {
    int idRental;
    Client client;
    Stall stall;
    int computersAmount;
    int extraChairsAmount;
    boolean hasRoomAccess;
    String date;
    boolean state;

    public Rental() {
    }

    public Rental(Client client, Stall stall, int computersAmount, int extraChairsAmount, boolean hasRoomAccess, String date, boolean state) {
        this.client = client;
        this.stall = stall;
        this.computersAmount = computersAmount;
        this.extraChairsAmount = extraChairsAmount;
        this.hasRoomAccess = hasRoomAccess;
        this.date = date;
        this.state = state;
    }
    
    public Rental(Client client, Stall stall, int computersAmount, int extraChairsAmount, boolean hasRoomAccess) {
        this.client = client;
        this.stall = stall;
        this.computersAmount = computersAmount;
        this.extraChairsAmount = extraChairsAmount;
        this.hasRoomAccess = hasRoomAccess;
    }

    public int getIdRental() {
        return idRental;
    }

    public void setIdRental(int idRental) {
        this.idRental = idRental;
    }

    public Client getClient() {
        return client;
    }

    public void setClient(Client client) {
        this.client = client;
    }

    public Stall getStall() {
        return stall;
    }

    public void setStall(Stall stall) {
        this.stall = stall;
    }

    public int getComputersAmount() {
        return computersAmount;
    }

    public void setComputersAmount(int computersAmount) {
        this.computersAmount = computersAmount;
    }

    public int getExtraChairsAmount() {
        return extraChairsAmount;
    }

    public void setExtraChairsAmount(int extraChairsAmount) {
        this.extraChairsAmount = extraChairsAmount;
    }

    public boolean isHasRoomAccess() {
        return hasRoomAccess;
    }

    public void setHasRoomAccess(boolean hasRoomAccess) {
        this.hasRoomAccess = hasRoomAccess;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public boolean isState() {
        return state;
    }

    public void setState(boolean state) {
        this.state = state;
    }

    @Override
    public String toString() {
        return "Rental{" + "idRental=" + idRental + ", client=" + client + ", stall=" + stall + ", computersAmount=" + computersAmount + ", extraChairsAmount=" + extraChairsAmount + ", hasRoomAccess=" + hasRoomAccess + ", date=" + date + ", state=" + state + '}';
    }

}
