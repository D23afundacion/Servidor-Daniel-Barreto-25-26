<html>
    <head>
        <style>
            tr{
                text-align: center;
            }
        </style>
    </head>
    <body>
        <table>
            <thead>
                <tr>
                    <th>Producto</th><th>Precio</th>
                </tr>
            </thead>
            <tbody>
                <?php
                    $cesta = [
                        ["Pan", 1.20],
                        ["Huevos x 30", 4.50],
                        ["Leche x 6", 6.90],
                        ["Té de maracuya", 1.2],
                        ["Jamón", 2.70],
                        ["Pechuga de pollo", 7.34],
                    ];

                    $precio_total = 0;

                    foreach ($cesta as [$producto, $precio]) {
                        echo "<tr><th>".$producto."</th><th>".$precio."€</th></tr>";
                        $precio_total = $precio_total + $precio;
                    }

                    echo "<tr><th>Total</th><th>".$precio_total."€</th></tr>";
                ?>
            </tbody>
        </table>    
    </body>
</html>