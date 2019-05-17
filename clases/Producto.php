<?php
class Producto{
	private $db;
	public function __construct(){
		$this->db = new Database();
		}
	
	public function __destruct(){
		$this->db=null;
		}
	
	public function getproductos(){
		return $this->db->query("select * from productos order by codigo desc");
		}


	public function ConsultarUltimo(){
		 $this->db->query("select codigo from productos order by codigo desc limit 1");
		}	
	


	public function insertproductos($codigo,$producto,$descripcion,$precio){
		$this->db->query("insert into productos (codigo, producto, descripcion, precio) values ($codigo, '$producto', '$descripcion', $precio)");
		} 
	
	public function deleteproducto($codigo){
		$this->db->query("Delete from productos where codigo=$codigo");
		}
		
	}
?>
