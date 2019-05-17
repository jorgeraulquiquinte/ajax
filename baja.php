<?php
require ('core/core.php');

	$producto = new Producto();
	$producto->deleteproducto($_GET['idproducto']);
	
?>


