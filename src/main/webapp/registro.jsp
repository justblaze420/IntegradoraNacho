<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Sistema Registro Personal UTEZ</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='main.css'>
    <link rel="stylesheet" href="assets/css/bootstrap.css">
    <script src='scripts.js'></script>
</head>
<body style="background-color:black; color: white">
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
                    <a class="nav-link disabled" aria-current="page" href="#">Registro</a>
                    <a class="nav-link" href="vistaProductos.jsp">Asistencias</a>
                </div>
            </div>
        </div>
    </nav>
</header>

      <section>
        <div class="container mt-5">
            <center>
            <h2>Registro</h2></center>
            <form class="form-check-label form-control-lg" method="post" action="comida-servlet">

                <div class="form-group">
                    <label>Nombre</label><br>
                    <input type="text" name="producto" class="form-control" value="${producto.producto}"
                           />
                </div>

                <br>

                <div class="form-group">

                    <label><strong>Hora:</strong></label> <br>
                    <input type="text" name="cantidad" class="form-control" value="${producto.cantidad}" maxlength="5"
                           />
                </div>

                <br>
                <div class="form-group">
                    <label for="validationDefault01" class="form-label"><strong>Departamento</strong></label> <br>
                    <input type="text" name="unidadm" class="form-control" value="${producto.unidadm}" maxlength="100"
                           />
                </div>

                <br>
                <input type="hidden" name="id" value="${producto.id}">

                <input type="submit" value="Registrar" class="btn btn-outline-success" onclick="mostrarAlerta()" />


                <div class="bg bg2"></div>
                <div class="bg bg3"></div>



          </form>

          </div>
          </div>
          </div>
      </section>
<br>
      <footer class="container">
          <p class="float-end"><a href="#">Back to top</a></p>
          <p>© 2023 Integradora · <a href="https://utez.edu.mx">UTEZ</a> · <a href="#">Cliente Lic. Ignacio Sanchez Moreno</a></p>
      </footer>
</body>
</html></html>