package com.example.actividadpasteleria.controller;


import com.example.actividadpasteleria.model.DaoProducto;
import com.example.actividadpasteleria.model.Producto;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

    @WebServlet (name = "ComidaServlet", value = "/comida-servlet")
    public class ComidaServlet extends HttpServlet {
        @Override
        protected void doGet(HttpServletRequest req, HttpServletResponse resp)
                throws IOException {

            req.getSession().removeAttribute("comida");
            String operacion = req.getParameter("operacion");
            String respuesta = "";

            if (operacion.equals("delete")){
                DaoProducto dao = new DaoProducto();
                dao.delete(Integer.parseInt(req.getParameter("id")));
                respuesta = "vistaProductos.jsp";
            }
            if (operacion.equals("update")){
                DaoProducto dao = new DaoProducto();
                int id = Integer.parseInt(req.getParameter("id"));
                Producto prod = (Producto) dao.findOne(id);
                prod.setId(id);
                req.getSession().setAttribute("producto",prod);

                respuesta ="registro.jsp";
            }

            //Falta regresar una respuesta
            resp.sendRedirect(respuesta);
        }

        @Override
        protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
            String producto = req.getParameter("producto");
            int cantidad = Integer.parseInt(req.getParameter("cantidad"));
            String unidadm = req.getParameter("unidadm");

            DaoProducto dao = new DaoProducto();

            if(!req.getParameter("id").isEmpty()){
                int id = Integer.parseInt(req.getParameter("id"));
                //Es una operacion de update
                dao.update(id,new Producto(id,producto,cantidad,unidadm));
                req.getSession().removeAttribute("producto");
            }else{
                dao.insert(new Producto(0,producto,cantidad,unidadm));
            }

            resp.sendRedirect("vistaProductos.jsp");
        }
    }
