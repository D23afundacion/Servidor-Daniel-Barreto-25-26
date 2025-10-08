<html>
    <body>
        <h1>Inicio de sesión</h1>
        <p>Inicia sesión para acceder al sitio web</p>
        <form action="/login.php" method="post">
            <label for="user">Usuario: </label>
            <input type="text" id="user_input" name="user">
            <br><br>
            <label for="password">Contraseña: </label>
            <input type="password" id="password_input" name="password">
            <br><br>
            <input type="submit" value="Iniciar sesión">
        </form>
        <h1>
            <?php
                if (isset($_POST["user"]) && isset($_POST["password"])) {
                    $user = $_POST["user"];
                    $password = $_POST["password"];
                    if ($user == "admin" && $password == "1234") {
                        echo "Acceso concedido.";
                    } else {
                        echo "Acceso denegado.";
                    }
                }
            ?>
        </h1>
    </body>
</html>