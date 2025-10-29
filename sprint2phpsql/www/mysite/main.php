<?php
    $db = mysqli_connect('localhost', 'root', '1234', 'mysitedb') or die('Fail');
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        img{
            width: 100%;
            height: auto;
        }
        table, td{
            border: 1px solid black;
            border-collapse: collapse;
            text-align: center;
        }
        table{
            width: 75%;
            height: auto;
        }
        #tdAncho{
            width: 15%;
        }
    </style>
</head>
<body>
    <h1>Conexión establecida</h1>
    <?php
        $query = 'SELECT * FROM tCoches';
        $result = mysqli_query($db, $query) or die('Query error');
        echo "<table>
                <tr>
                    <td>Identificador</td>
                    <td>Marca</td>
                    <td>Nombre</td>
                    <td>Imagen</td>
                    <td>Velocidad máxima</td>
                </tr>";
            while ($row = mysqli_fetch_array($result)) {
                echo '<tr>';
                echo "<td><a href=/detail.php?id='$row[0]'>$row[0]</a></td>"; 
                echo "<td>$row[1]</td>";
                echo "<td>$row[2]</td>";
                echo "<td id='tdAncho'><img src='$row[3]'></td>";
                echo "<td>$row[4]</td>";
                echo '</tr>';
            }
        echo '</table>';
        mysqli_close($db);
    ?>
</body>
</html>