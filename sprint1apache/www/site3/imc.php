<html>
    <body>
            <?php
                $peso = $_GET ["peso"];
                $altura = $_GET ["altura"];

                function calcular_imc($peso, $altura) {
                    return $peso / ($altura * $altura);
                }

                $imc = calcular_imc($peso, $altura);

                if ($imc < 18.5) {
                    echo "<h1>Bajo peso</h1>";
                } else if ($imc < 24.9) {
                    echo "<h1>Normal</h1>";
                } else {
                    echo "<h1>Sobrepeso</h1>";
                }
            ?>
    </body>
</html>