<?php
  $page_title = 'Editar personaje';
  require_once('includes/load.php');
  // Checkin What level user has permission to view this page
   page_require_level(2);
   $all_areas = find_all('work_area');
   
?>
<?php
$product = find_by_id('characters',(int)$_GET['id']);
if(!$product){
  $session->msg("d","Missing character id.");
  redirect('character.php');
}
?>
<?php
 if(isset($_POST['character'])){
    $req_fields = array('character-name','character-last-name','job','work-area' );
    validate_fields($req_fields);

   if(empty($errors)){
       $p_name  = remove_junk($db->escape($_POST['character-name']));
       $p_lname  = remove_junk($db->escape($_POST['character-last-name']));
       $p_qty   = remove_junk($db->escape($_POST['job']));
       $p_buy   = remove_junk($db->escape($_POST['work-area']));

       $name_area = find_by_id_name_area('work_area',$p_buy);
       $final_name= $name_area["name_area"];
       echo($final_name);

       $query   = "UPDATE characters SET";
       $query  .=" name ='{$p_name}', last_name ='{$p_lname}',";
       $query  .=" job ='{$p_qty}', boss = '{$final_name}'";
       $query  .=" WHERE id ='{$_GET['id']}'";
       $result = $db->query($query);
       echo($result);
               if($result && $db->affected_rows() === 1){
                 $session->msg('s',"Personaje ha sido actualizado. ");
                 redirect('character.php', false);
               }
               if($result && $db->affected_rows() === 0){
                $session->msg('d',' Debe modificar datos para actualizar');
                redirect('character.php', false);
              }
               else {
                 $session->msg('d',' Lo siento, actualización falló.');
                 redirect('edit_character.php?id='.$_GET['id'], false);
               }

   } else{
       $session->msg("d", $errors);
       redirect('edit_character.php?id='.$product['id'], false);
   }

 }

?>



<?php include_once('layouts/header.php'); ?>
<div class="row">
  <div class="col-md-12">
    <?php echo display_msg($msg); ?>
  </div>
</div>
  <div class="row">
  <div class="col-md-12">
      <div class="panel panel-default">
        <div class="panel-heading">
          <strong>
            <span class="glyphicon glyphicon-th"></span>
            <span>Agregar Colaborador</span>
         </strong>
        </div>
        <div class="panel-body">
         <div class="col-md-12">
            <form method="post" action="edit_character.php?id=<?php echo ($_GET['id']) ?>">
              <div class="form-group">
                  <div class="row">
                      <div class="col-md-6">
                        <div class="input-group">
                            <span class="input-group-addon">
                            <i class="glyphicon glyphicon-user"></i>
                            </span>
                            <input type="text" class="form-control" name="character-name" value="<?php echo remove_junk($product['name']);?>">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="input-group">
                            <span class="input-group-addon">
                            <i class="glyphicon glyphicon-list-alt"></i>
                            </span>
                            <input type="text" class="form-control" name="character-last-name" value="<?php echo remove_junk($product['last_name']);?>">
                        </div>
                    </div>
                </div>
              </div>
              <div class="form-group">
                <div class="row">
                  <div class="col-md-6">
                  <div class="input-group">
                            <span class="input-group-addon">
                            <i class="glyphicon glyphicon-briefcase"></i>
                            </span>
                            <input type="text" class="form-control" name="job" value="<?php echo remove_junk($product['job']);?>">
                        </div>
                  </div>
                  <div class="col-md-4">
                    <select class="form-control" name="work-area" required> 
                      <option value="" >Selecciona área de trabajo</option>
                    <?php  foreach ($all_areas as $area): ?>
                      <option value="<?php echo (int)$area['id_area'] ?>">
                        <?php echo $area['name_area'] ?></option>
                    <?php endforeach; ?>
                    </select>
                  </div>
                  <div class="col-md-2">
                    <a href="workArea.php" class="btn btn-success"  title="Agregar"><span class="glyphicon glyphicon-plus"></span>  Área de trabajo</a>
                  </div>
                </div>
              </div>
              <button type="submit" name="character" class="btn btn-danger">actualizar personaje</button>
          </form>
         </div>
        </div>
      </div>
    </div>
  </div>  

<?php include_once('layouts/footer.php'); ?>