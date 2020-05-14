<?php
  require_once('includes/load.php');
  // Checkin What level user has permission to view this page
  page_require_level(2);
?>
<?php
  $product = find_by_idprod('productsowner',(int)$_GET['id']);
  if(!$product){
    $session->msg("d","ID vacío");
    redirect('character.php');
  }
?>
<?php
  $delete_id = delete_by_idprod('productsowner',(int)$_GET['id'],$_GET['iddueño']);
  if($delete_id){
      $session->msg("s","Producto eliminado de este colaborador");
      redirect('add_sale.php?id='.$_GET['iddueño']);
  } else {
      $session->msg("d","Eliminación falló");
      redirect('add_sale.php?id='.$_GET['iddueño']);
  }
?>
