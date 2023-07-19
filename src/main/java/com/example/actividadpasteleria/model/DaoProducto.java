package com.example.actividadpasteleria.model;

import com.example.actividadpasteleria.utils.MysqlConnector;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DaoProducto implements DaoRepository{
    @Override
    public List findAll() {
        List<Producto> listaProductos = new ArrayList<>();
        MysqlConnector con = new MysqlConnector();
        Connection conexion = con.connect();
        try {
            PreparedStatement stmt = conexion.prepareStatement("SELECT * FROM inventario");
            ResultSet res = stmt.executeQuery();
            while (res.next()) {
                Producto prd = new Producto();
                prd.setId(res.getInt("id"));
                prd.setProducto(res.getString("producto"));
                prd.setCantidad(res.getInt("cantidad"));
                prd.setUnidadm(res.getString("unidadm"));
                listaProductos.add(prd);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return listaProductos;
    }

    @Override
    public Object findOne(int id) {
        Producto prd = new Producto();
        MysqlConnector con = new MysqlConnector();
        Connection conexion = con.connect();
        try {
            PreparedStatement stmt = conexion.prepareStatement("select * from inventario where id=?");
            stmt.setInt(1, id);
            ResultSet res = stmt.executeQuery();
            if (res.next()) {
                prd.setProducto(res.getString("producto"));
                prd.setCantidad(res.getInt("cantidad"));
                prd.setUnidadm(res.getString("unidadm"));
            } else {
                prd.setProducto("No existe el Producto con el id " + id);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return prd;
    }

    @Override
    public boolean update(int id, Producto prd) {
        boolean res = false;
        MysqlConnector conector = new MysqlConnector();
        Connection con = conector.connect();
        try {
           PreparedStatement stmt =con.prepareStatement("update inventario "+
                   "set producto = ?, cantidad = ?, unidadm = ?" + "where id = ?");
            stmt.setString(1, prd.getProducto());
            stmt.setInt(2, prd.getCantidad());
            stmt.setString(3, prd.getUnidadm());
            stmt.setInt(4, prd.getId());
            if (stmt.executeUpdate()>0) res = true;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return res;
    }

    @Override
    public boolean delete(int id) {
        MysqlConnector con = new MysqlConnector();
        Connection conexion = con.connect();
        PreparedStatement stmt = null;
        try {
            stmt = conexion.prepareStatement("delete from inventario where id=?");
            stmt.setInt(1, id);
            int resultado = stmt.executeUpdate();
            //Si el resultado es diferente de cero significa que si se hizo el delete
            if (resultado != 0) {
                return true;
            } else {
                return false;
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

    public boolean insert(Producto prd) {
        boolean resultado = false;
        MysqlConnector con = new MysqlConnector();
        Connection conection = con.connect();

        try {
            PreparedStatement stmt = conection.prepareStatement("insert into inventario (producto,cantidad,unidadm)"
                    + "values(?,?,?)");
            stmt.setString(1, prd.getProducto());
            stmt.setInt(2, prd.getCantidad());
            stmt.setString(3, prd.getUnidadm());
            int res = stmt.executeUpdate();
            if (res >= 1) resultado = true;


        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return resultado;
    }
}
