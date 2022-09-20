<?php

/*
	Arquivo: enviaHeranca.php
	Autor: Higor Bernardes & Whillian Gabriel
	Criação: 02/06/22
	Atualização: 17/06/22
	Envia e-mail pelo Argo Mail 
*/

?>

<doctype html>
<html lang="pt-br">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Envio de e-mail</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
	<link href="../css/email.css" rel="stylesheet">
	
  </head>
<body style="background-color: #f0f0f0"><br>
    <center><h1 style="color: #dc3545;"> Envio de e-mail com PhpMailer </h1></center>

    <form  action="" method="POST" enctype="multipart/form-data" style="margin-left: 40%;margin-top: 1%">
        <input type="hidden" name="action" value="submit">
        Nome:<br>
		<div class="input-group mb-3">
			<div class="input-group-prepend">
				<span class="input-group-text" id="basic-addon1"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="22" fill="currentColor" class="bi bi-file-earmark-person" viewBox="0 0 16 16"><path d="M11 8a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/><path d="M14 14V4.5L9.5 0H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2zM9.5 3A1.5 1.5 0 0 0 11 4.5h2v9.255S12 12 8 12s-5 1.755-5 1.755V2a1 1 0 0 1 1-1h5.5v2z"/></svg></span>
			</div>
			<input name="name" type="text" value="Higor" size="30"/><br>
		</div>
        E-mail:<br>
		<div class="input-group mb-3">
			<div class="input-group-prepend">
				<span class="input-group-text" id="basic-addon1">@</span>
				</div>
			<input name="email" type="text" value="higor@etec.vav" size="30"/><br>
		</div>
        Mensagem:<br>
        <textarea name="message" rows="4" cols="38">Teste de envio de e-mail com PhpMailer e ArGo Mail.</textarea><br><br>
        <div class="hm"><input type="submit" class="btn btn-danger btn-lg" value="Enviar e-mail" style="margin-left: 10%"/><div>Verifique se o ArGo Mail foi inicializado!</div></div>
    </form>
	
<?php	
	if (isset($_REQUEST['action'])){
		$name=$_REQUEST['name'];
		$email=$_REQUEST['email'];
		$message=$_REQUEST['message'];
		if (($name=="")||($email=="")||($message=="")){
			echo "<b>Preencha todos os campos!</b>";
		}else{		
		
		require_once('./src/MailerHeranca.php'); //Chama herança
	
			$mail = new MailerHeranca(); //Inicia polimorfismo (treco azul)
			$mail->Priority = 1;
			$mail->Username = "whillian@etec.vav";
			$mail->Password = "whillian123";
			$mail->IsHTML(true);
			$mail->SMTPSecure = '';
			
			$mail->SetFrom("whillian@etec.vav", "Whillian");
			$mail->Subject  = "Teste";
			$mail->Body     = $message;
			$mail->AltBody     = $message;
			$mail->addAddress($email, $name);
			$mail->addReplyTo($email, $name);
			
			if(!$mail->send()) {
				echo '<br><br><br><br><b style="color:red; margin-left: 33%">Erro ao tentar enviar a mensagem.</b> ' . $mail->ErrorInfo;
			} else {
				echo '<br><br><br><br><b style="color:green; margin-left: 42.5%;">Mesagem enviada com sucesso.</b>';
			}
	    }
	}
?>
    </body> 
</html>
