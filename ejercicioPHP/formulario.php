
<?php

if($_POST){
    $nombre = $_POST['nombre'];
    $apellido = $_POST['apellido'];
    $email = $_POST['email'];


// Connection
    $servername = "localhost";
    $username = "root";
    $password = "root";
    $dbname = "ejercicio_sql";

$connection= new mysqli($servername, $username, $password, $dbname);
    if($connection->connect_error){
        die("Conexión fallida " . $connection->connect_error);
    }
    $sql = "INSERT INTO USUARIO (NOMBRE, APELLIDO, EMAIL) VALUES ( '$nombre', '$apellido', '$email')"; 
    if($connection->query ($sql) === TRUE){
        echo "Registro creado exitosamente";
    }else{
        echo "Error: " . $sql . "<br>". $connection->error;
    }
    $connection->close();
}

?>