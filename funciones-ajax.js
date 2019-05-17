// JavaScript Document
function objetoAjax(){
	var xmlhttp=false;
	try {
		xmlhttp = new ActiveXObject("Msxml2.XMLHTTP");
	} catch (e) {
		try {
		   xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		} catch (E) {
			xmlhttp = false;
  		}
	}

	if (!xmlhttp && typeof XMLHttpRequest!='undefined') {
		xmlhttp = new XMLHttpRequest();
	}
	return xmlhttp;
}

function mostrarDatos(){
	//donde se mostrará el resultado de los productos 
	divResultado = document.getElementById('resultado');
	
	//instanciamos el objetoAjax
	ajax=objetoAjax();
	//usamos el medoto POST
	//archivo que realizará la operacion consulta.php
	ajax.open("POST", "consulta.php",true);
	ajax.onreadystatechange=handler_usuario;
	ajax.send()
		
	function handler_usuario() {
		if (ajax.readyState==4) {
			//mostrar resultados de la consulta a la tabla de productos
			divResultado.innerHTML = ajax.responseText;
		}
	}	
}

function enviarDatosProducto(){
	//div donde se mostrará lo resultados
  	divResultado = document.getElementById('resultado');

	//obtengo los valores de los campos de input del formulario
	
	producto = document.getElementById('producto').value;
	descripcion = document.getElementById('descripcion').value;
	precio = document.getElementById('precio').value;
	
	
	console.log(producto);
	console.log(descripcion);
	console.log(precio);

	//instanciamos el objetoAjax
 	ajax=objetoAjax();
	//usamos el medoto POST
	//archivo que realizará la operacion alta.php
	ajax.open("POST", "alta.php",true);
	//cuando el objeto XMLHttpRequest cambia de estado, la función se inicia
  ajax.onreadystatechange=function() {
	  //la función responseText tiene todos los datos pedidos al servidor
  	if (ajax.readyState==4) {
  		//mostrar resultados en esta capa
		divResultado.innerHTML = ajax.responseText
  		//llamar a funcion para limpiar los inputs
		LimpiarCampos();
		mostrarDatos();
		}
 	}
	ajax.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
	//enviando los valores
	ajax.send("producto="+producto+"&descripcion="+descripcion+"&precio="+precio);
}

//función para limpiar los campos
function LimpiarCampos(){
  document.nuevo_producto.producto.value="";
  document.nuevo_producto.descripcion.value="";
  document.nuevo_producto.precio.value="";
  document.nuevo_producto.producto.focus();
}






function eliminarDato(idproducto){
   //donde se mostrará el resultado de la eliminacion
   divResultado = document.getElementById('resultado');
   console.log(idproducto);
   //usaremos un cuadro de confirmacion 
   var eliminar = confirm("Desea eliminar este producto?")
   if ( eliminar ) {
   //instanciamos el objetoAjax
   ajax=objetoAjax();
   //uso del medotod GET
   //indicamos el archivo que realizará el proceso de eliminación
   //junto con un valor que representa el id del empleado
   ajax.open("GET", "baja.php?idproducto="+idproducto);
   ajax.onreadystatechange=function() {
   if (ajax.readyState==4) {
   //mostrar resultados en esta capa
   divResultado.innerHTML = ajax.responseText
   }
   }
   //como hacemos uso del metodo GET
   //colocamos null
   ajax.send(null)
   }
}



function Modificar_Producto(idP){
	nombre=document.frmProducto.nombre.value;
	descripcion=document.frmProducto.descripcion.value;
	precio=document.frmProducto.precio.value;
	ajax=objetoAjax();

	console.log("editar datos");
	ajax.open("POST","actualizar_producto.php",true);
	
	
	ajax.onreadystatechange=function(){    //DETECTA Q LA ACCION SE REALIZO CORRECTAMENTE Y ENVIA MSJ
		if (ajax.readyState==4){
			alert('El producto fue modificado con exito');
			window.location.reload(true);
		}
	}
	ajax.setRequestHeader("Content-Type","application/x-www-form-urlencoded"); //CODIFICA LOS VALORES ENVIADOS POR LA URL Y SEA TRANSPARENTE PARA EL USUARIO
	ajax.send("nombre="+nombre+"&idP="+idP+"&descripcion="+descripcion+"&precio="+precio);  //SON LOS VALORES QUE ENVIAREMOS A REGISTRAR.PHP
}