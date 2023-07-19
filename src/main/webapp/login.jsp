<%--
  Created by IntelliJ IDEA.
  User: Robbie Daniel
  Date: 10/07/2023
  Time: 11:59 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Registro</title>
</head>
<jsp:include page="header.jsp">
<body>
    <main>
    <div class="row">
    < class="col">
    <form class="form-control" action="login" method="post">
    <div class="form-control">
    <label for="correo">Correo:</label>
    <input class="input-group" type="email" name="correo" id="correo" />
    </div>
    <div class="form-control">
    <label for="pass">Contraseña:</label>
    <input class="input-group" type="password" name="pass" id="pass" />
    </div>
    <input type="submit" value="Iniciar Sesion">
    </form>
    </div>
    </main>
</body>
</html>
