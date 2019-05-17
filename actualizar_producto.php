<?php 
    require_once "../model/conexion.php";
    
    $nombre=$_POST['nombre'];
    $descripcion=$_POST['descripcion'];
	$precio=$_POST['precio'];
    $idP=$_POST['idP'];

    if ($marca_detalle!=""){
        $sql="UPDATE productos SET producto = '$nombre' , descripcion = '$descripcion' , precio = '$precio' WHERE codigo=$idP";
        //echo $sql; exit;
        $sen=mysql_query($sql);
        if(!$sen)
                die('Ha Ocurrido un Error al Grabar.' . mysql_error());
        else{
        }
    }
?>
