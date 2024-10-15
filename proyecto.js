
document.getElementById('formulario').addEventListener('submit', function(event) {
    event.preventDefault(); // Evita que el formulario se envíe y recargue la página

    const username = document.getElementById('username').value;
    const password = document.getElementById('password').value;

    const usuarioCorrecto = "prueba";
    const contrasenaCorrecta = "12345";

    if (username === usuarioCorrecto && password === contrasenaCorrecta) {
        alert('Inicio de sesión exitoso');
        window.location.href = 'pagina_principal.html'; 
    } else {
        alert('Usuario o contraseña incorrectos');
    }
});
