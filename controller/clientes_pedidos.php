<?php 

$smarty = new Template();

Login::MenuCliente();

$pedidos = new Pedidos();


$pedidos->GetPedidosCliente($_SESSION['CLI']['cli_id']);

$smarty->assign('PEDIDOS', $pedidos->GetItens());
$smarty->assign('PEDIDOS_QUANTIDADE', $pedidos->TotalDados());
$smarty->assign('PAG_ITENS', Rotas::pag_ClienteItens());
$smarty->assign('PAGINAS', $pedidos->ShowPaginacao());


$smarty->display('clentes_pedidos.tpl');

 ?>