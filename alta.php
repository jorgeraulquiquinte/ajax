<?php
require ('core/core.php');
	var $ultimo_id;
	
	$producto = new Producto();
	
	$ultimo_id = $producto->ConsultarUltimo();

	$ultimo_id++;

	$productos = $producto->insertproductos($ultimo_id,$_POST['producto'],$_POST['descripcion'],$_POST['precio']);
	

?>


