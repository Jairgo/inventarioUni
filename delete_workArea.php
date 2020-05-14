<?php
  require_once('includes/load.php');
  // Checkin What level user has permission to view this page
  page_require_level(1);
?>
<?php
  $area = find_by_id_area('work_area',(int)$_GET['id']);
  if(!$area){
    $session->msg("d","ID del área faltante.");
    redirect('workArea.php');
  }
?>
<?php
  $delete_id = delete_by_id_area('work_area',(int)$area['id_area']);
  if($delete_id){
      $session->msg("s","Área eliminada");
      redirect('workArea.php');
  } else {
      $session->msg("d","Eliminación falló");
      redirect('workArea.php');
  }
?>
