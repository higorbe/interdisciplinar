<?php

/*
	Arquivo: MailerHeranca.php
	Autor: Higor Bernardes & Whillian Gabriel
	Criação: 18/06/22
	Atualização: 18/06/22
*/

	require_once('./src/PHPMailer.php');
	require_once('./src/SMTP.php');
	require_once('./src/Exception.php');
	
	class MailerHeranca extends PHPMailer\PHPMailer\PHPMailer {  // Herança do PhpMailer
	
	function Parametros() {
			$this->IsSMTP();
			$this->SMTPDebug = 2;
			$this->charset = 'UTF-8';
			$this->Host = "127.0.0.1";
			$this->Port = 25;
			$this->SMTPAuth = false;
	}
}
?>