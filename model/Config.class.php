<?php 

Class Config{

	//INFORMÃÇÕES BÁSICAS DO SITE
	const SITE_URL = "http://localhost";
	const SITE_PASTA = "loja";
	const SITE_NOME = "LOJA MODELO";
	const SITE_EMAIL_ADM = "cesar252742@gmail.com";
	const BD_LIMIT_POR_PAG = 6;
	const SITE_CEP = '76870402';


	//INFORMAÇÕES DO BANCO DE DADOS
	const BD_HOST = "localhost",
		  BD_USER = "root",
		  BD_SENHA = "",
		  BD_BANCO = "loja_modelo",
		  BD_PREFIX = "rs_";  




	/*//INFORMÃÇÕES BÁSICAS DO SITE HOSPEDADO
	const SITE_URL = "http://lojamodelo-cc.umbler.net";
	const SITE_PASTA = "";
	const SITE_NOME = "LOJA MODELO - PHP 7 e Mysqli";
	const SITE_EMAIL_ADM = "cesar252742@gmail.com";
	const BD_LIMIT_POR_PAG = 6;
	const SITE_CEP = '76870402';


	//INFORMAÇÕES DO BANCO DE DADOS HOSPEDADO
	const BD_HOST = "mysql552.umbler.com",
		  BD_USER = "cesarhenrique",
		  BD_SENHA = "hugo123456",
		  BD_BANCO = "lojamodelo",
		  BD_PREFIX = "rs_";
*/



	//INFORMAÇÕES PARA PHP MAILLER
	const EMAIL_HOST = "smtp.gmail.com";
	const EMAIL_USER = "cesar252742@gmail.com";
	const EMAIL_NOME = "Contato Ramos Tecnolog";
	const EMAIL_SENHA = "Samanta2527";
	const EMAIL_PORTA = 587;
	const EMAIL_SMTPAUTH = true;
	const EMAIL_SMTPSECURE = "tls";
	const EMAIL_COPIA = "cesar252742@gmail.com";



	//CONSTANTES PARA O PAGSEGURO
	const PS_EMAIL  = "cesar252742@gmail.com"; // email pagseguro
    const PS_TOKEN  = "F4EB1789D2D2310DD4B9AFB64F23E5E2"; // token produção
    const PS_TOKEN_SBX = "B5832A2924124E3CA84273C24BBD88BB";  // token do sandbox
    const PS_AMBIENTE = "sandbox"; // production   /  sandbox

}
 ?>

