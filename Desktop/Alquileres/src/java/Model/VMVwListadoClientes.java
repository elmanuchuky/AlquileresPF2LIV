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
public class VMVwListadoClientes {
    int id;
    int document;
    String name;
    String sureName;
    int stalls;
    double total;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getDocument() {
        return document;
    }

    public void setDocument(int document) {
        this.document = document;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSureName() {
        return sureName;
    }

    public void setSureName(String sureName) {
        this.sureName = sureName;
    }

    public int getStalls() {
        return stalls;
    }

    public void setStalls(int stalls) {
        this.stalls = stalls;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public VMVwListadoClientes() {
    }

    public VMVwListadoClientes(int id, int document, String name, String sureName, int stalls, double total) {
        this.id = id;
        this.document = document;
        this.name = name;
        this.sureName = sureName;
        this.stalls = stalls;
        this.total = total;
    }

    @Override
    public String toString() {
        return "VMVwListadoClientes{" + "id=" + id + ", document=" + document + ", name=" + name + ", sureName=" + sureName + ", stalls=" + stalls + ", total=" + total + '}';
    }
    
}
