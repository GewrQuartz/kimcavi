<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Consultar Inicio De Sesión</title>
</head>
<body>
    
<?php
    $usuario = $_POST["txtUsuario"];
    $contrasenia = $_POST["txtContrasenia"];

    //echo "<h3>'$usuario', '$contrasenia'</h3>"

    include("Conexion/conexion-mysql.php");

    $queryUsuario = "CALL log_kimcavi('$usuario', '$contrasenia')";

    $consulta = mysqli_query($conexion, $queryUsuario);
    $filas = mysqli_fetch_array($consulta);

    if($filas[0] == $usuario){
        if($filas[1] == $contrasenia){

        echo '<script>alert("USUARIO CORRECTO")</script>';
        session_start();
        $_SESSION['usuario']  = $filas[0];
        $_SESSION['rol'] = $filas[8];
        $_SESSION['nombreRol'] = $filas[7];
        header("location:index.php");
        } else {
        echo "DEBE VERIFICAR QUE LA CONTRASEÑA SEA CORRECTA <br>
        <a href = 'inicio-sesion.php'>REGRESAR</a>"; 
        }
    }else{
        echo "DEBE VERIFICAR QUE EL USUARIO SEA CORRECTO <br>
        <a href = 'inicio-sesion.php'>REGRESAR</a>"; 
    }
     mysqli_fetch_assoc($consulta);
     mysqli_close($conexion);

/*
         if(mysqli_query($conexion, $queryUsuario) == '' || mysqli_query($conexion, $queryUsuario) == 'NULL'){
            echo "USUARIO NO ENCONTRADO <br>
            <a href = 'inicio-sesion.php'>REGRESAR</a>"; 
         } else {
            
            echo '<script>alert("USUARIO CORRECTO")</script>';
            header("location:index.php");
         }*/

         /*if(mysqli_query($conexion, $cqueryUsuario)) {
                echo '<script>alert("USUARIO CORRECTO")</script>';
                header("location:index.php");
            } else {
                echo "USUARIO NO ENCONTRADO <br>
                <a href = 'inicio-sesion.php'>REGRESAR</a>"; 
            } */

?>
</body>
</html>