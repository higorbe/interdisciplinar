<?php
	/*
	  Arquivo: PD_DAO.php
	  Autor: Higor Bernardes & Whillian Gabriel
	  Criação: 28/03/22
	  Atualização: 02/03/22
	*/
	
	class PD_DAO{
		private $conn = null; 
		function __construct($conn){
			$this -> conn = $conn; 
		}
		
	 public function cadPD($pdTO){ //INSERT = cadastra
	 $stmt = $this -> conn -> prepare("INSERT INTO PessoasDocumentos (pesId, docId, pdocCod, pdocUF, pdocEmissao) VALUES (?, ?, ?, ?, ?)");
	 $stmt -> bind_param("iisss", $pesId, $docId, $pdocCod, $pdocUF, $pdocEmissao );
	
	
	$pesId = $pdTO -> getPesId();
	$docId = $pdTO -> getDocId();
	$pdocCod = $pdTO -> getPdocCod();
	$pdocUF = $pdTO -> getPdocUF();
	$pdocEmissao = $pdTO -> getPdocEmissao();
	
	try{ 
	$retorno = $stmt -> execute();
	} catch (Exception  $e){ 
	$retorno = false; }
	$stmt -> close();
	return $retorno;
	}
	 
	public function altPD($pdTO){ //UPDATE = altera
	 $stmt = $this -> conn -> prepare("UPDATE INTO PessoasDocumentos (pesId, docId, pdocCod, pdocUF, pdocEmissao) VALUES (?, ?, ?, ?, ?)");
	 $stmt = bind_param("iissd", $pesId, $docId, $pdocCod, $pdocUF, $pdocEmissao );
	
	$pesId = $pdTO -> getPesId();
	$docId = $pdTO -> getDocId();
	$pdocCod = $pdTO -> getPdocCod();
	$pdocUF = $pdTO -> getPdocUF();
	$pdocEmissao = $pdTO -> getPdocEmissao();
	
	try{ 
	$retorno = $stmt -> execute();
	} catch (Exception  $e){ 
	$retorno = false; }
	$stmt -> close();
	return $retorno;
	}
	
	public function delPD($pdTO){ //DELETE = exclui
	 $stmt = $this -> conn -> prepare("DELETE FROM PessoasDocumentos WHERE pesId = ?");
	 $stmt -> bind_param("i", $pesId);
	
	$pesId = $pdTO -> getPesId();
		
	try{ 
	$retorno = $stmt -> execute();
	} catch (Exception  $e){ 
	$retorno = false; }
	$stmt -> close();
	return $retorno;
		}
	
	public function getPD() {
		$rs           = $this->conn->query("SELECT * FROM PessoasDocumentos ORDER BY pesId")->fetch_all(MYSQLI_NUM);
		$linhas       = array();
		foreach ($rs as $linha)
			$linhas[] = json_encode($linha);
		return implode(',',$linhas);
	}
	
	public function getP() {
		$rs           = $this->conn->query("SELECT pesId, pesNome FROM Pessoas ORDER BY pesId")->fetch_all(MYSQLI_NUM);
		$linhas       = array();
		foreach ($rs as $linha)
			$linhas[] = json_encode($linha);
		return implode(',',$linhas);
	}	
	
	public function getD() {
		$rs           = $this->conn->query("SELECT docId, docDesc FROM Documentos ORDER BY docId")->fetch_all(MYSQLI_NUM);
		$linhas       = array();
		foreach ($rs as $linha)
			$linhas[] = json_encode($linha);
		return implode(',',$linhas);
	}	
	
	public function getUf() {
		$rs           = $this->conn->query("SELECT ufId, ufDesc FROM Uf ORDER BY ufId")->fetch_all(MYSQLI_NUM);
		$linhas       = array();
		foreach ($rs as $linha)
			$linhas[] = json_encode($linha);
		return implode(',',$linhas);
	}
}
?>