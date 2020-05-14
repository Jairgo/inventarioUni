<?php
  require_once('includes/load.php');
  // Checkin What level user has permission to view this page
  page_require_level(2);
?>
<?php
  $product = find_by_id('characters',(int)$_GET['id']);
  if(!$product){
    $session->msg("d","ID vacío");
    redirect('character.php');
  }
?>
<?php
  $delete_id = delete_by_id('characters',(int)$product['id']);
  if($delete_id){
      $session->msg("s","Personaje eliminado");
      redirect('character.php');
  } else {
      $session->msg("d","Eliminación falló");
      redirect('character.php');
  }
?>
