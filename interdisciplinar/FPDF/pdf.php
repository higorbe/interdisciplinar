<?php

/*
	Arquivo: pdf.php
	Autor: Higor Bernardes & Whillian Gabriel
	Criação: 29/04/22
	Atualização: 07/05/22
	Gera arquivo em Pdf com as informações do Banco de Dados
*/
	
	require_once('./FPDF/fpdf.php');
	$conn = new PDO ('mysql:host=localhost;dbname=interdisciplinar', 'root', '');
	//$conn = new mysqli("localhost", "root", "", "interdisciplinar");
	
	
	class DAO extends FPDF{
		public function header(){
			$this->Image('./img/logo.png',23,10,-500);
			$this->SetTextColor('112', '179', '229');
			$this->SetFont('Arial','B',20);
			$this->Rect(6, 6, 286, 198, 'D');
			$this->Ln(6);
			$this->Cell(255,10,'Whillian e Higor', 0, 0, 'C');
			$this->Ln();
			$this->SetTextColor('105', '105', '105');
			$this->SetFont('Times','',12);
			$this->Cell(254,5,'Tabela: Pessoas Documentos',0,0,'C');
			$this->Ln(15);	
			$this->Cell(0,315,1, 0, 0, 'R');
			$this->Ln(0);
		}
		public function footer(){
			$this->SetY(-15);
			$this->SetFont('Arial','',8);
			$this->Ln(0,10,'Page ' .$this->PageNo().'/{nb}',0,0,'c');
		}
		public function headerTable(){
			$this->SetFont('Times','B',12);
			$this->SetFillColor('112', '179', '229');
			$this->Cell(25,10,'pesId',1,0,'C',1);
			$this->Cell(25,10,'docId',1,0,'C',1);
			$this->Cell(148,10,'pdocCod',1,0,'C',1);
			$this->Cell(30,10,'pdocUF',1,0,'C',1);
			$this->Cell(50,10,'pdocEmissao',1,0,'C',1);
			$this->Ln();
		}
		public function myTable($conn){
			$this->SetFont('Times','',12);
			$sql = $conn->query('SELECT * FROM pessoasdocumentos ORDER BY pessoasdocumentos.pdocCod ASC');
			//return $sql;
			//while($data = $sql->fetch_array()){
			while($data = $sql->fetch(PDO::FETCH_OBJ)){
				$this->Cell(25,10,$data->pesId,1,0,'C');
				$this->Cell(25,10,$data->docId,1,0,'C');
				$this->Cell(148,10,$data->pdocCod,1,0,'L');
				$this->Cell(30,10,$data->pdocUF,1,0,'C');
				$this->Cell(50,10,$data->pdocEmissao,1,0,'C');
				$this->Ln();
			}
		}
	}

	$arquivo = "Pessoas_Documentos";
	$pdf = new DAO(); // Instancia o objeto FPDF com parâmetros ao Construtor
	$pdf->AliasNbPages();
	$pdf->PageNo();
	$pdf->SetTitle('Pessoas Documentos');
	$pdf->SetAuthor('Higor e Whillian');
	$pdf->SetSubject('Documentos das Pessoas');
	$pdf->SetKeywords('Pessoas Documentos UF');
	$pdf->SetCreator('Whillian e Higor');
	$pdf->AddPage('L', 'A4', 0); //Cria Pagina
	$pdf->headerTable();
	$pdf->myTable($conn);
	$pdf->Output($arquivo, 'I');	// "D" para Download, "I" para visualizar em tela	
	?>	
		
		