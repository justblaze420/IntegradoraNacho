<%@ page import="com.example.actividadpasteleria.model.DaoProducto" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<link rel='stylesheet' type='text/css' media='screen' href='main.css'>
<link rel="stylesheet" href="assets/css/bootstrap.css">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src='scripts.js'></script>
<head>
    <title>Asistencias</title>
    <style>
        /* Estilos CSS para la tabla */
        table {
            width: 100%;
            background-color: #157347 /* Cambia el color de fondo de la tabla aquí */
        }

        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
    </style>
    <header>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container-fluid">
                <a class="navbar-brand" href="registro.html">
                    <img src="img/cds.png" alt="Logo" width="40" height="30" class="d-inline-block align-text-top">
                    SRP UTEZ
                </a>
                <button class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="navbar-collapse collapse" id="navbarNavAltMarkup" style="">
                    <div class="navbar-nav">
                        <a class="nav-link" href="registro.html">Inicio</a>
                        <a class="nav-link" aria-current="page" href="registro.jsp">Registro</a>
                        <a class="nav-link disabled" href="#">Asistencias</a>
                    </div>
                </div>
            </div>
        </nav>
    </header>
</head>
<link rel="stylesheet" href="assets/css/estiloanimado.css">

<div class="container">
    <div class="row">
        <div class="col col-md-6">
            <div class="bg"></div>
            <div class="bg bg2"></div>
            <div class="bg bg3"></div>
<body style="background-color:black; color: white">
<br>
<section>
    <div class="container mt-5">
        <center><h2>Sistemas DATID UTEZ</h2></center>
<table class="table table-striped-columns">
    <center>

    <thead >
    <tr>
        <th width="100px">Nombre</th>
        <th width="150px">Hora</th>
        <th width="150px">Departamento</th>
        <th>Editar</th>
        <th>Eliminar</th>
    </tr>

    </thead>
    <tbody>
    <%
        request.getSession().removeAttribute("Producto");
        DaoProducto prd = new DaoProducto();
        request.getSession().setAttribute("Producto", prd.findAll());
    %>
    <c:forEach items="${Producto}" var="u">
        <tr>
            <td width="150px">${u.producto}</td>
            <td width="150px">${u.cantidad}</td>
            <td width="300px">${u.unidadm}</td>

            <td><a class="btn btn-outline-info"
                   href="comida-servlet?id=${u.id}&operacion=update">Modificar</a></td>
            <td><a class="btn btn-outline-danger"
                   href="comida-servlet?id=${u.id}&operacion=delete">X</a>
                <script>
                    function mostrarAlerta() {
                        alert("Seguro de eliminar el registro?");
                        window.location.href = "home1.html"; // Enlace a redirigir
                    }
                </script>
            </td>


        </tr>
            </center>

    </c:forEach>


    </tbody>
</table>
    </div>
    <div id="carouselExampleFade" class="carousel slide carousel-fade">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="img/cecadec.jpg" class="d-block w-100" alt="..." height="200" width="300">
            </div>
            <div class="carousel-item">
                <img src="img/DATID.jpg" class="d-block w-100" alt="..." height="200" width="300">
            </div>
            <div class="carousel-item">
                <img src="img/UTEZ_vista.jpg" class="d-block w-100" alt="..." height="200" width="300">
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
</section>
            <br>
<a href="registro.jsp" class="btn btn-outline-primary">Registrar Consulta</a>
        </div>
        </div>
    </div>
<script type="text/javascript" src="assets/js/bootstrap.js"></script>
<br>
<footer class="container">
    <p class="float-end"><a href="#">Back to top</a></p>
    <p>© 2023 Integradora · <a href="https://utez.edu.mx">UTEZ</a> · <a href="#">Cliente Lic. Ignacio Sanchez Moreno</a></p>
</footer>
</body>


</html>

