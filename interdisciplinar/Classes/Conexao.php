<?php
/*
	Arquivo: Conexao.php
	Criação: 11/03/2022 - Robson Alberghini
	Classe de conexão com Mysql
*/	
class Conexao {
	private $conn;
	
	function __construct($ip='127.0.0.1', $usr='root', $sen='', $bd='Interdisciplinar') {
		if ($_SERVER['SERVER_NAME'] != 'localhost' &&  $_SERVER['SERVER_NAME'] != '127.0.0.1')  {
			$ip  = '127.0.0.1';
			$usr = 'root';
			$sen = '';
			$bd='Interdisciplinar';
		}
		$conn = mysqli_connect($ip, $usr, $sen, $bd);
		$this->conn = $conn;
	}
	
	public function getConn() {
		return $this->conn;
	}
}
?>