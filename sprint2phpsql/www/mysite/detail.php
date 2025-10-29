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
            width: 35%;
            height: auto;
        }
    </style>
</head>
<body>
    <?php
        if (!isset($_GET['id'])) {
            die('No se ha especificado un coche');
        }
        $id_coche = $_GET['id'];
        $query = 'SELECT * FROM tCoches WHERE id='.$id_coche.'';
        $result = mysqli_query($db, $query) or die('Query error');
        $only_row = mysqli_fetch_array($result);
        echo "<h1>Nombre: $only_row[1] $only_row[2]</h1>";
        echo "<img src='$only_row[3]'>";
        echo "<h2>Ventas: $only_row[4]</h2>";
    ?>
    <h3>Comentarios:</h3>
    <ul>
        <?php
            $query2 = "SELECT * FROM tComentarios WHERE id_coche = $id_coche";
            $result2 = mysqli_query($db, $query2) or die('Query error');
            while ($row = mysqli_fetch_array($result2)) {
                echo "<li>Comentario: $row[comentario].</li>";
            }
            mysqli_close($db);
        ?>
    </ul>
    <p>Deja un nuevo comentario:</p>
    <form action="/comment.php" method="post">
        <textarea rows="4" cols="50" name="new_comment"></textarea><br>
        <input type="hidden" name="id_coche" value="<?php echo $id_coche; ?>">
        <input type="submit" value="Comentar">
    </form>
</body>
</html>