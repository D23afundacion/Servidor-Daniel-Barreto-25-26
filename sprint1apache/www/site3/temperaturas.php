<html>
    <body>
        <h1>Celsius y Fahrenheit</h1>
        <p>Convierte de celsius a fahrenheit o viceversa</p>
        <p>
            <?php
                if (isset($_POST["ftransformacion"])) {
                    if ($_POST["ftransformacion"] == "celsius") {
                        $cantidad = $_POST["fcantidad"];
                        $transformado = ($cantidad * (9 / 5)) + 32;
                        echo "Resultado: ".$cantidad." oC = ".$transformado." oF";
                    } else {
                        $cantidad = $_POST["fcantidad"];
                        $transformado = (($cantidad - 32) * 5 ) / 9;
                        echo "Resultado: ".$cantidad." oF = ".$transformado." oC";
                    }
                }
            ?>
        </p>
        <p>Realiza la conversión:</p>
        <form action="/temperaturas.php" method="post">
            <label for="cantidad_input">Cantidad:</label>
            <br>
            <input type="number" id="cantidad_input" name="fcantidad"><br>
            <input type="radio" id="celsius_input" name="ftransformacion" value="celsius">
            <label for="celsius_input">Celsius</label><br>
            <input type="radio" id="fahrenheit_input" name="ftransformacion" value="fahrenheit">
            <label for="fahrenheit_input">Fahrenheit</label><br>
            <input type="submit" value="Convertir">
        </form>
    </body>
</html>