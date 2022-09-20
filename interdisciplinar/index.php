<?php

/*
	Arquivo: index.php
	Autor: Higor Bernardes & Whillian Gabriel
	Criação: 27/06/22
	Atualização: 18/06/22
	Página inical, onde é possivel realizar o CRUD e redirecionar para enviar e-mail, pdf e  gerar excel.
*/

?>

<doctype html>
<html lang="pt-br">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap -->
	<link rel="stylesheet" href="assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">
	<link rel="stylesheet" type="text/css" href="./css/gradient.css"/>
	<script type="text/javascript" src="assets/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript" src="assets/js/jquery-3.6.0.min.js"></script>
</head>
  <body>
  <div class="container">
    <br>
	<div class="row">
		<div class="col-md-12">
			<br /><h1 class="gradient"><center>Pessoas Documentos</center></h1>
			<a class="btn btn-light" href="cadastrar.php" style="background-image: linear-gradient(to top right, rgb(110, 14, 235), rgb(128, 4, 76)); color:white; margin-left:83%; margin-top:-4%"><i class="bi bi-plus-lg"></i> Adicionar</a>
		<div>
	</div></div></div><br>
	<div class="row">
		<div class="col-md-12">
			<table class="table" border="1" bordercolor="#dee2e6">
			  <thead>
				<tr>
				  <th>Id Pessoa</th>
				  <th>Id Documento</th>
				  <th>⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀Código</th>
				  <th>UF</th>
				  <th>Emissão</th>
				  <th>⠀⠀⠀⠀⠀⠀⠀Ações</th>
				</tr>
			  </thead>
			  <tbody>
							
	<?php
		require './classes/PD_DAO.php';
		require './classes/conexao.php';
		
		$conn = new conexao();
		$pd = new PD_DAO($conn->getConn());
		
		$result = json_decode('['.$pd->getPD().']');
		foreach ($result as $r){    
				echo '<tr>';
				echo '<td>'. $r[0] .'</td>';
				echo '<td>'. $r[1] .'</td>';
				echo '<td><center>'. $r[2] .'</center></td>';
				echo '<td>'. $r[3] .'</td>';
				echo '<td>'. $r[4] .'</td>';
				echo '<td><a class="btn btn-outline-primary" style="color:#007bff" href="editar.php"><i class="bi bi-pencil-fill"></i> Editar </a>⠀
						  <a class="btn btn-outline-danger" style="color:#dc3545" href="delete.php?id='.$r[0].'"><i class="bi bi-trash3-fill"></i> Excluir</a></td>';
				echo '</tr>';
			}
	?>
			  </tbody>
			</table>
	<br />
	<center>
	<div class="row">
		<div class="col-md-12">
			<button class="btn btn-primary btn-lg btn-block" onclick="location.href='fpdf/pdf.php'">Gerar PDF</button>
			<button class="btn btn-success btn-lg btn-block" onclick="location.href='excel/gerador.php'">Gerar Excel</button>
			<button class="btn btn-danger btn-lg btn-block" onclick="location.href='email/enviaHeranca.php'">Enviar E-mail</button><br>
		</div>
	</div>
	</center></br>
  </div>
  </body>
</html>