<?php

/*
	Arquivo: gerador.php
	Autor: Higor Bernardes & Whillian Gabriel
	Criação: 01/03/22
	Atualização: 17/03/22
	Gera planilha em Excel com infomações do Banco de Dados
*/	

	require '../classes/conexao.php';
	require './vendor/autoload.php';
	require '../classes/PD_DAO.php';

	$conn = new conexao();

	$pd = new PD_DAO($conn->getConn());

	use PhpOffice\PhpSpreadsheet\Spreadsheet;
	use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
	use PhpOffice\PhpSpreadsheet\IOFactory;
	use PhpOffice\PhpSpreadsheet\Style\Alignment;
	use PhpOffice\PhpSpreadsheet\Style\Fill;

	$styleArray = [
		'font' => [
			'bold' => true,
		],
		'alignment' => [
			'horizontal' => \PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER,
		],
		'borders' => [
			'top' => [
				'borderStyle' => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN,
			],
			'bottom' => [
				'borderStyle' => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN,
			],
			'left' => [
				'borderStyle' => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN,
			],
			'right' => [
				'borderStyle' => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN,
			],
		],
	];

	$stylePD = [
		'font' => [
			'bold' => true,
		],
		'fill' => [
			'fillType' => \PhpOffice\PhpSpreadsheet\Style\Fill::FILL_GRADIENT_LINEAR,
			'rotation' => 90,
			'startColor' => [
				'argb' => 'F8FFAE',
			],
			'endColor' => [
				'argb' => '43C6AC',
			],
		],
	 ];
	 
	 $styleBorder = [
		'borders' => [
			'outline' => [
				'borderStyle' => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN,
			],
			'vertical' => [
				'borderStyle' => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN,
			],
		],
		
	];
	 

	$spreadsheet = new Spreadsheet();
	$sheet = $spreadsheet->getActiveSheet();
	$worksheet = $spreadsheet->getActiveSheet();

	//Cabeçalho Tabela
	$sheet->setCellValue('A2', 'Id Pessoa');
	$sheet->setCellValue('B2', 'Id Documento');
	$sheet->setCellValue('C2', 'Código');
	$sheet->setCellValue('D2', 'UF');
	$sheet->setCellValue('E2', 'Emissao');
	//Cabeçalho Tabela: Borda
	$spreadsheet->getActiveSheet()->getStyle('A2')->applyFromArray($styleArray);
	$spreadsheet->getActiveSheet()->getStyle('B2')->applyFromArray($styleArray);
	$spreadsheet->getActiveSheet()->getStyle('C2')->applyFromArray($styleArray);
	$spreadsheet->getActiveSheet()->getStyle('D2')->applyFromArray($styleArray);
	$spreadsheet->getActiveSheet()->getStyle('E2')->applyFromArray($styleArray);

	//PD
	$sheet->setCellValue('A1', 'Pessoas Documentos');
	$spreadsheet->getActiveSheet()->mergeCells("A1:E1");
	$spreadsheet->getActiveSheet()->getStyle('A1')->getFont()->setSize(18);
	$spreadsheet->getActiveSheet()->getStyle('A1')->getAlignment()->setHorizontal(Alignment::HORIZONTAL_CENTER);
	$spreadsheet->getActiveSheet()->getStyle('A1')->applyFromArray($stylePD);

	//Tamanho Coluna
	$spreadsheet->getActiveSheet()->getColumnDimension('A')->setWidth(9);
	$spreadsheet->getActiveSheet()->getColumnDimension('B')->setWidth(13);
	$spreadsheet->getActiveSheet()->getColumnDimension('C')->setWidth(37);
	$spreadsheet->getActiveSheet()->getColumnDimension('D')->setWidth(4);
	$spreadsheet->getActiveSheet()->getColumnDimension('E')->setWidth(8);

	//Borda Tabela
	$worksheet->getStyle('A1:E148')->applyFromArray($styleBorder);

	//Margem tabela
	$spreadsheet->getActiveSheet()->getPageMargins()->setTop(1);
	$spreadsheet->getActiveSheet()->getPageMargins()->setRight(0.75);
	$spreadsheet->getActiveSheet()->getPageMargins()->setLeft(0.75);
	$spreadsheet->getActiveSheet()->getPageMargins()->setBottom(1);

	//Parametrização de impressão
	$spreadsheet->getActiveSheet()->getPageSetup()->setOrientation(\PhpOffice\PhpSpreadsheet\Worksheet\PageSetup::ORIENTATION_LANDSCAPE);
	$spreadsheet->getActiveSheet()->getPageSetup()->setPaperSize(\PhpOffice\PhpSpreadsheet\Worksheet\PageSetup::PAPERSIZE_A4);

	//Conexão BD (com DAO)
	$result = json_decode('['.$pd->getPD().']');
	$n = 3;
	foreach ($result as $r)
	{
		$sheet->setCellValue('A' . $n, $r[0]);
		$sheet->setCellValue('B' . $n, $r[1]);
		$sheet->setCellValue('C' . $n, $r[2]);
		$sheet->setCellValue('D' . $n, $r[3]);
		$sheet->setCellValue('E' . $n, $r[4]);	
		$n++;
	};

	$filename = 'PessoasDocumentos.xlsx';
	header('Content-Disposition: attachment;filename="'.$filename.'"');
	$writer = IOFactory::createWriter($spreadsheet, 'Xlsx');
	$writer->save('php://output');

?>