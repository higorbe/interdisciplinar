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
	
	$pessoas = json_decode('['.$pdDAO->getP().']');
	
	$documentos = json_decode('['.$pdDAO->getD().']');
	
	$uf = json_decode('['.$pdDAO->getUf().']');

	// Se houve postagem de um elemento chamado txtId
	if (isset($_POST['pesId'])) {
		// Popula o objeto Transfer Object
		$pdTO ->setPesId($_POST['pesId']);
		$pdTO ->setDocId($_POST['docId']);
		$pdTO ->setPdocCod($_POST['pdocCod']);
		$pdTO ->setPdocUF($_POST['pdocUF']);
		$pdTO ->setPdocEmissao($_POST['pdocEmissao']);

		// Invoca o método de cadastro da classe Data Access Object. Direciona para as páginas de erro ou sucesso
		if ($pdDAO ->cadPd($pdTO))
			header("Location: ./cadastrar_ok.html");	
		else
			header("Location: ./cadastrar_erro.html");	
	}
?>

<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<title>Cadastro</title>
		<meta charset="utf-8">
	</head>
	<body>
		<fieldset>
			<legend>Cadastro</legend>
			<form method="post" action="cadastrar.php">
				<div>
					<label id="pesId" for="pesId">Pessoa</label>
					<select name="pesId" id="pesId"/>
						<option value="Selecione" selected>Selecione...</option>
						<?php 
						foreach ($pessoas as $p){
							echo'
							<option value="'.$p[0].'">'.$p[1].'</option>
						';
						}
						?>
					</select>					
				</div>
				<div>
					<label id="docId" for="docId">Código Documento</label>
					<select name="docId" id="docId"/>
						<option value="Selecione" selected>Selecione...</option>
						<?php 
						foreach ($documentos as $d){
							echo'
							<option value="'.$d[0].'">'.$d[1].'</option>
						';
						}
						?>
					</select>
				</div>
				<div>
					<label id="pdocCod" for="pdocCod">Descrição do Documento</label>
					<input type="text" name="pdocCod" id="pdocCod" maxlength="150" placeholder="ex: email@email.com"/>
				</div>
				<div>
					<label id="pdocUF" for="pdocUF=">Sigla do Estado</label>					
					<select name="pdocUF" id="pdocUF"/>
						<option value="Selecione" selected>Selecione...</option>
						<?php 
						foreach ($uf as $u){
							echo'
							<option value="'.$u[0].'">'.$u[1].'</option>
						';
						}
						?>
					</select>
				</div>
				<div>
					<label id="pdocEmissao" for="pdocEmissao">Data de Emissão do Documento</label>
					<input type="date" name="pdocEmissao" id="pdocEmissao"/>
				</div>
				<div>
					<input type="submit" value="Cadastrar" />
				</div>
			</form>
		</fieldset>
	</body>
</html>