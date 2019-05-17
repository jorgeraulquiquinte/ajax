<?php

require ('core/core.php');
echo '<table width="700" border=1 class="col-xs-12 text-left">';
echo '<tr>
		<td>Codigo</td>
		<td>Producto</td>
		<td>Descripcion</td>
		<td>Precio</td>
		<td>Op. A</td>
		<td>Op. B</td>
	  </tr>';	
	$producto = new Producto();
	$productos = $producto->getproductos();
	foreach ($productos as $unproducto){
		  echo '<tr>
			<td>'.$unproducto['codigo'].'</td>
			<td>'.$unproducto['producto'].'</td>
			<td>'.$unproducto['descripcion'].'</td>
			<td>'.$unproducto['precio'].'</td>
			<td align="center"><a href="" onclick="eliminarDato('.$unproducto["codigo"].')"><img title="Eliminar Producto" src="imagenes/Delete_small.png" border="0"/></a></td>
			
			<td align="center"><a href="" onclick="modificarDato('.$unproducto["codigo"].',\''.$unproducto["producto"].'\',\''.$unproducto["descripcion"].'\','.$unproducto["precio"].')"><img title="Editar Producto" src="imagenes/Edit_small.png" border="0"/></a></td>
			
		  </tr>';
	}
	echo '</table>';

?>

