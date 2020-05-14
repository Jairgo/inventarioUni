<?php
  $page_title = 'Editar categoría';
  require_once('includes/load.php');
  // Checkin What level user has permission to view this page
  page_require_level(1);
?>
<?php
  //Display all catgories.
  $area = find_by_id_area('work_area',(int)$_GET['id']);
  if(!$area){
    $session->msg("d","Missing area id.");
    redirect('workArea.php');
  }
?>

<?php
if(isset($_POST['edit_area'])){
  $req_field = array('area-name');
  validate_fields($req_field);
  $area_name = remove_junk($db->escape($_POST['area-name']));
  if(empty($errors)){
        $sql = "UPDATE work_area SET name_area='{$area_name}'";
       $sql .= " WHERE id_area='{$area['id_area']}'";
     $result = $db->query($sql);
     if($result && $db->affected_rows() === 1) {
       $session->msg("s", "Área actualizada con éxito.");
       redirect('workArea.php',false);
     } else {
       $session->msg("d", "Lo siento, actualización falló.");
       redirect('workArea.php',false);
     }
  } else {
    $session->msg("d", $errors);
    redirect('workArea.php',false);
  }
}
?>
<?php include_once('layouts/header.php'); ?>

<div class="row">
   <div class="col-md-12">
     <?php echo display_msg($msg); ?>
   </div>
   <div class="col-md-5">
     <div class="panel panel-default">
       <div class="panel-heading">
         <strong>
           <span class="glyphicon glyphicon-th"></span>
           <span>Editando <?php echo remove_junk(ucfirst($area['name_area']));?></span>
        </strong>
       </div>
       <div class="panel-body">
         <form method="post" action="edit_workArea.php?id=<?php echo (int)$area['id_area'];?>">
           <div class="form-group">
               <input type="text" class="form-control" name="area-name" value="<?php echo remove_junk(ucfirst($area['name_area']));?>">
           </div>
           <button type="submit" name="edit_area" class="btn btn-primary">Actualizar área</button>
       </form>
       </div>
     </div>
   </div>
</div>



<?php include_once('layouts/footer.php'); ?>
