<?php
/* Smarty version 3.1.33, created on 2018-10-31 16:30:08
  from 'C:\xampp\htdocs\loja\view\produtos_info.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5bda02c07b44e2_33354763',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '41c25063825d62e3712cd0061d037e31c8fd1a59' => 
    array (
      0 => 'C:\\xampp\\htdocs\\loja\\view\\produtos_info.tpl',
      1 => 1540931403,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5bda02c07b44e2_33354763 (Smarty_Internal_Template $_smarty_tpl) {
?> <?php echo '<script'; ?>
 >
  $(function() {
    $("#valor").spinner({
        step:1
    });
});
<?php echo '</script'; ?>
>
 <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['PRO']->value, 'P');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['P']->value) {
?>

      <h3 class="text-center"><?php echo $_smarty_tpl->tpl_vars['P']->value['pro_nome'];?>
 - Ref: <?php echo $_smarty_tpl->tpl_vars['P']->value['pro_ref'];?>
</h3>
<hr>

<div class="row">
    
  
        <div class="col-md-6 ">

        <img class="thumbnail" src="<?php echo $_smarty_tpl->tpl_vars['P']->value['pro_img_g'];?>
" alt="" > 

    </div>

   
	    <div class="col-md-6 thumbnail">
        
          <img src="<?php echo $_smarty_tpl->tpl_vars['TEMA']->value;?>
/images/logo-pagseguro.png" alt="">
  <hr>
            
        
        <div class="col-md-5">
           <h3 class="text-center preco">R$ <?php echo $_smarty_tpl->tpl_vars['P']->value['pro_valor'];?>
</h3>   
            
        </div>
      
        <div class="col-md-7">
            <form name="carrinho" method="post" action="<?php echo $_smarty_tpl->tpl_vars['PAG_COMPRAR']->value;?>
">
                <input type="hidden" name="pro_id" value="<?php echo $_smarty_tpl->tpl_vars['P']->value['pro_id'];?>
">
                <input type="hidden" name="acao" value="add">
                <input type="hidden" name="pro_estoque" value="<?php echo $_smarty_tpl->tpl_vars['P']->value['pro_estoque'];?>
">
                <div class="col-md-5"> 
                <select id="valor" name="valor" class="form-control">                
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
                <option>5</option>
                <option>6</option>
                <option>7</option>
                <option>8</option>
                <option>9</option>
                <option>10</option>
              </select></div>
            <button  class="btn btn-success btn-lg">Comprar</button>
             </form> 
            
        </div>
           
         
      

     
        
    

    </div>




</div>
        <!-- -->
                 <div class="row">
            <hr>
              <h4 class="text-center">Mais imagens</h4>

              <ul style="list-style: none">
                 <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['IMAGES']->value, 'I');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['I']->value) {
?>

                      <li class="col-md-3 ">
                          <img src="<?php echo $_smarty_tpl->tpl_vars['I']->value['img_nome'];?>
" alt="" class="thumbnail">


                      </li>

                      <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

                 
              </ul>
              

        </div>
                  
        <div class="row">
            <hr>
            <h4 class="text-center">Descrição do produto</h4>

            <?php echo $_smarty_tpl->tpl_vars['P']->value['pro_desc'];?>
 

        </div>  
            <br>
            <br>


  <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);
}
}
