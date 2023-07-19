<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="es">
    <jsp:include page="header.jsp"></jsp:include>
    <head>
        <meta charset='utf-8'>
        <meta http-equiv='X-UA-Compatible' content='IE=edge'>
        <title>Sistema Registro Personal UTEZ</title>
        <meta name='viewport' content='width=device-width, initial-scale=1'>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

        <script src='main.js'></script>

        <style>

            .box {
                position: relative;
                background: #fff;
                border-radius: 4px;
                width: 650px;
                text-align: center;
                outline: dashed 1px black;
                margin: 25px auto;
                transform: translateX(-50%);
                left: 50%;

            }
            .col-lg-2, .col-md-3, .col-xs-6{
                margin-top: 30px !important;
                position: relative;
                right: -510px;
            }
            .gates{
                position: relative;
                right: -25px;
            }
        </style>
    </head>
    <body style="background-color:black">

    <div class="col-lg-2 col-md-3 col-xs-6 ">
        <div class="gradient">
        <img src="img/profile.png" alt="" class="gates" style="border-radius: 500px;">
        <div class="box">
            <h2>Sistema de Control de Asistencias</h2>
            <form action="registro.html" method="get" onsubmit="return verificarContrasenas()">
                <div class="mb-3">
                    <label for="nombre" class="form-label">Nombre/Huella Digital</label>
                    <input type="text" class="form-control" name="nombre" id="nombre">
                </div>
                <div class="mb-3">
                    <label for="contrasena" class="form-label">Contraseña/Huella Digital</label>
                    <input type="password" class="form-control" id="contrasena" aria-describedby="passHelp" required>
                    <div id="passHelp" class="form-text">Minimo 5 caracteres.</div>
                </div>
                <div class="mb-3">
                    <label for="repetirContrasena" class="form-label">Repetir Contraseña:</label>
                    <input type="password" class="form-control" id="repetirContrasena" required>
                </div>
                <h6><span id="mensajeError" style="color: red;"></span></h6>

                <a href="registro.html"><button type="submit" class="btn btn-outline-primary">Ingresar</button></a>
            </form>
        </div>
    </div>
    </div>

    </body>
</html></html>