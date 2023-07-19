getParameter = (key) => {

    address = window.location.search; // url de la ventana actual

    // Objeto de tipo URLSearchParams
    parameterList = new URLSearchParams(address);

    // Regresa el valor del parámetro "key" return parameterList.get(key)
    return parameterList.get(key);
}

function verificarContrasenas() {
    var contrasena = document.getElementById('contrasena').value;
    var repetirContrasena = document.getElementById('repetirContrasena').value;

    if (contrasena !== repetirContrasena) {
        document.getElementById('mensajeError').textContent = 'Las contraseñas no coinciden';
        return false; // Evita que el formulario se envíe
    }

    if (contrasena.length < 5) {
        document.getElementById('mensajeError').textContent = 'La contraseña debe tener al menos 5 caracteres';
        return false; // Evita que el formulario se envíe
    }

    return true; // Permite el envío del formulario si las contraseñas coinciden y tienen al menos 5 caracteres
}

function getParameter(name) {
    name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)");
    var results = regex.exec(location.search);
    return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
}
console.log(getParameter("nombre"));
var nombre = getParameter("nombre");

    document.getElementById("mensaje").innerHTML = "Bienvenido/a " + nombre;
