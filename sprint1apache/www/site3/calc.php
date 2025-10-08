<html>
    <body>
        <h1>Calculadora PHP</h1>
        <p>Realiza calculos matemáticos sencillos</p>
        <p>
            <?php 
                if (isset($_POST["operacion"]) && isset($_POST["fcantidad_1"]) && isset($_POST["fcantidad_2"])) {
                    $cantidad_1 = $_POST["fcantidad_1"];
                    $cantidad_2 = $_POST["fcantidad_2"];
                    switch ($_POST["operacion"]) {
                        case "suma":
                            echo "Resultado: ".$cantidad_1." + ".$cantidad_2." = ".$cantidad_1 + $cantidad_2;
                            break;
                        case "resta":
                            echo "Resultado: ".$cantidad_1." - ".$cantidad_2." = ".$cantidad_1 - $cantidad_2;
                            break;
                        case "multiplicacion":
                            echo "Resultado: ".$cantidad_1." * ".$cantidad_2." = ".$cantidad_1 * $cantidad_2;
                            break;
                        case "division":
                            echo "Resultado: ".$cantidad_1." / ".$cantidad_2." = ".$cantidad_1 / $cantidad_2;
                            break;
                    }
                }
            ?>
        </p>
        <form action="/calc.php" method="post">
            <label for="fcantidad_1">Cantidad 1: </label>
            <input type="number" id="cantidad_input_1" name="fcantidad_1">
            <br><br>
            <label for="fcantidad_2">Cantidad 2: </label>
            <input type="number" id="cantidad_input_2" name="fcantidad_2">
            <br><br>
            <label for="operacion">Tipo de operación: </label>
            <select name="operacion" id="operacion_select">
                <option value="suma" selected>Suma</option>
                <option value="resta">Resta</option>
                <option value="multiplicacion">Multiplicación</option>
                <option value="division">División</option>
            </select>
            <br><br>
            <input type="submit" value="Calcular">
        </form>
    </body>
</html>