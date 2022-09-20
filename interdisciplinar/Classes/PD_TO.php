<?php
	/*
	  Arquivo: PD_TO.php
	  Autor: Higor Bernardes & Whillian Gabriel
	  Criação: 22/03/22
	  Atualização: 24/03/22
	*/
	
	class PD_TO{ 
		private $pesId; //chave primaria - chave estrangeira da tabela Pessoas (pesId)
		private $docId; //chave primaria - chave estrangeira da tabela Documentos (docId)
		private $pdocCod; 
		private $pdocUF; //chave estrangeira da tabela UF (ufId)
		private $pdocEmissao; 
		
		/* pesId */
		public function getPesId(){ 
			return $this->pesId;    
		}
		public function setPesId($pesId){ 
			$this -> pesId = $pesId;
			return true; 
		}
		
		/* docId */
		public function getDocId(){ 
			return $this->docId;  
		}
		public function setDocId($docId){ 
			$this -> docId = $docId; 
			return true; 
		}
		
		/* pdocCod */
		public function getPdocCod(){ 
			return $this->pdocCod;  
		}
		public function setPdocCod($pdocCod){ 
			$this -> pdocCod = $pdocCod; 
			return true; 
		}
		
		/* pdocUF */
		public function getPdocUF(){ 
			return $this->pdocUF;  
		}
		public function setPdocUF($pdocUF){ 
			$this -> pdocUF = $pdocUF; 
			return true; 
		}
		
		/* pdocEmissao */
		public function getPdocEmissao(){ 
			return $this->pdocEmissao;  
		}
		public function setPdocEmissao($pdocEmissao){ 
			$this -> pdocEmissao = $pdocEmissao; 
			return true; 
		}
	}
?>