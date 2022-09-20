<?php
	// Importação das classses que serão utilizadas
	require_once("./classes/PD_TO.php");
	require_once("./classes/PD_DAO.php");
	require_once("./classes/Conexao.php");
	
	// Instância do objeto de conexão
	$conexao = new Conexao();
	
	// Método para obter conexão
	$conn    = $conexao->getConn();
	
	// Instâncias dos objetos Transfer Object e Data Access Object
	$pdTO    = new pd_TO();
	$pdDAO   = new pd_DAO($conn);
	

	// Se houve postagem de um elemento chamado txtId
	if (isset($_GET['id'])) {
		// Popula o objeto Transfer Object
		$pdTO ->setPesId($_GET['id']);

		// Invoca o método de cadastro da classe Data Access Object. Direciona para as páginas de erro ou sucesso
		if ($pdDAO ->delPd($pdTO))
			header("Location: ./delete_ok.html");	
		else
			header("Location: ./delete_erro.html");	
	}
?>