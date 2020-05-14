<?php
  $page_title = 'Agregar Colaborador';
  require_once('includes/load.php');
  // Checkin What level user has permission to view this page
  page_require_level(2);
  $all_areas = find_all('work_area');
  $all_photo = find_all('media');
  $all_products = find_all('products');
?>
<?php
 if(isset($_POST['add_character'])){
   $req_fields = array('character-name','character-last-name','job','boss' );
   validate_fields($req_fields);
   if(empty($errors)){
     $p_name  = remove_junk($db->escape($_POST['character-name']));
     $p_cat   = remove_junk($db->escape($_POST['character-last-name']));
     $p_qty   = remove_junk($db->escape($_POST['job']));
     $p_boss   = remove_junk($db->escape($_POST['boss']));

     $date    = make_date();
     $query  = "INSERT INTO characters (";
     $query .=" name,last_name,job,boss,date";
     $query .=") VALUES (";
     $query .=" '{$p_name}', '{$p_cat}','{$p_qty}', '{$p_boss}', '{$date}'";
     $query .=")";
     $query .=" ON DUPLICATE KEY UPDATE name='{$p_name}'";
     if($db->query($query)){
       $session->msg('s',"Personaje agregado exitosamente. ");
       redirect('character.php#end', false);
     } else {
       $session->msg('d',' Lo siento, registro falló.');
       redirect('add_character.php', false);
     }

   } else{
     $session->msg("d", $errors);
     redirect('add_character.php',false);
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
          <form method="post" action="add_character.php" class="clearfix">
              <div class="form-group">
                  <div class="row">
                      <div class="col-md-6">
                        <div class="input-group">
                            <span class="input-group-addon">
                            <i class="glyphicon glyphicon-user"></i>
                            </span>
                            <input type="text" class="form-control" name="character-name" placeholder="Nombre">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="input-group">
                            <span class="input-group-addon">
                            <i class="glyphicon glyphicon-list-alt"></i>
                            </span>
                            <input type="text" class="form-control" name="character-last-name" placeholder="Apellido">
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
                        <input type="text" class="form-control" name="job" placeholder="Puesto de trabajo">
                    </div>
                  </div>
                  <div class="col-md-4">
                    <select class="form-control" name="boss" required> 
                      <option value="" >Selecciona área de trabajo</option>
                    <?php  foreach ($all_areas as $area): ?>
                      <option value="<?php echo $area['name_area'] ?>">
                        <?php echo $area['name_area'] ?></option>
                    <?php endforeach; ?>
                    </select>
                  </div>
                  <div class="col-md-2">
                    <a href="workArea.php" class="btn btn-warning"  title="Agregar"><span class="glyphicon glyphicon-plus"></span>  Área de trabajo</a>
                  </div>
                </div>
              </div>

              <button type="submit" name="add_character" class="btn btn-success">Agregar Colaborador</button>
              
          </form>
          
         </div>
        </div>
      </div>
    </div>
  </div>

<?php include_once('layouts/footer.php'); ?>


