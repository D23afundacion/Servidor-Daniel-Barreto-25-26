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
                    <th>Número</th><th>Multiplicador</th><th>Resultado</th>
                </tr>
            </thead>
            <tbody>
                <?php
                    $num = 7;
                    for ($i = 1; $i <= 10; $i++) {
                        echo "<tr><th>".$num."</th><th>".$i."</th><th>".$num * $i."</th></tr>";
                    }
                ?>
            </tbody>
        </table>    
    </body>
</html>