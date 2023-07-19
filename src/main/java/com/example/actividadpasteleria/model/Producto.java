package com.example.actividadpasteleria.model;

public class Producto {
    private int id;
    private String producto;
    private int cantidad;
    private String unidadm;

    public Producto() {
    }

    public Producto(int id, String producto, int cantidad, String unidadm) {
        this.id = id;
        this.producto = producto;
        this.cantidad = cantidad;
        this.unidadm = unidadm;
    }


    public String getProducto() {
        return producto;
    }

    public void setProducto(String producto) {
        this.producto = producto;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public String getUnidadm() {
        return unidadm;
    }

    public void setUnidadm(String unidadm) {
        this.unidadm = unidadm;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
}
