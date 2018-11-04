<?php 

if(!isset($_POST['pro_id']) or $_POST['pro_id'] < 1){
	echo '<h4 class="alert alert-danger"> Erro na operação! </h4>';
	Rotas::Redirecionar(1, Rotas::pag_Carrinho());
	exit();
}

$id = (int)$_POST['pro_id'];

$carrinho = new Carrinho();
$smarty = new Template();
$gravar = new Produtos();
$ACAO = $_POST['acao'];

if($ACAO == 'add') {
	$pro_id    = $_POST['pro_id'];
    $estoque     = $_POST['pro_estoque'];
    $valor    = $_POST['valor'];   
    $pro_estoque = $estoque - $valor;
  
}
 	if ($ACAO == 'del' or $ACAO == 'limpar') {
 	$estoque     = $_POST['pro_estoque'];
    $pro_id    = $_POST['pro_id'];
    $valor    = $_POST['valor'];    
    $pro_estoque = $estoque ;
 
}

$gravar->Pre_est( $pro_estoque);

    if($gravar->Estoque($pro_id)){
    	//echo '<div class="alert alert-success">alterado!!</div>';
    }


try {
	$carrinho->CarrinhoADD($id);
} catch (Exception $e) {
	echo '<h4 class="alert alert-danger"> Erro na operação! </h4>';
}


Rotas::Redirecionar(1, Rotas::pag_Carrinho());

 ?>