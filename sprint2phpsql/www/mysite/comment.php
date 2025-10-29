<?php
    $db = mysqli_connect('localhost', 'root', '1234', 'mysitedb') or die('Fail');
?>
<html>
<body>
    <?php
        $id_coche = $_POST['id_coche'];
        $comentario = $_POST['new_comment'];
        $query = "INSERT INTO tComentarios (comentario, id_usuario, id_coche) VALUES ('".$comentario."', NULL, ".$id_coche.")";
        $result = mysqli_query($db, $query) or die('Error');
        echo "<p>Nuevo comentario ";
        echo mysqli_insert_id($db);
        echo " añadido</p>";
        echo "<a href=/detail.php?id=$id_coche>Volver</a>";
        mysqli_close($db);
    ?>
</body>
</html>