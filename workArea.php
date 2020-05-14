<?php
  $page_title = 'Lista de categorías';
  require_once('includes/load.php');
  // Checkin What level user has permission to view this page
  page_require_level(1);
  
  $all_areas = find_all('work_area')
?>
<?php
 if(isset($_POST['add_area'])){
   $req_field = array('area-name');
   validate_fields($req_field);
   $area_name = remove_junk($db->escape($_POST['area-name']));
   if(empty($errors)){
      $sql  = "INSERT INTO work_area (name_area)";
      $sql .= " VALUES ('{$area_name}')";
      if($db->query($sql)){
        $session->msg("s", "Área agregada exitosamente.");
        redirect('workArea.php',false);
      } else {
        $session->msg("d", "Lo siento, registro falló");
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
  </div>
   <div class="row">
    <div class="col-md-5">
      <div class="panel panel-default">
        <div class="panel-heading">
          <strong>
            <span class="glyphicon glyphicon-th"></span>
            <span>Agregar Área de trabajo</span>
         </strong>
        </div>
        <div class="panel-body">
          <form method="post" action="workArea.php">
            <div class="form-group">
                <input type="text" class="form-control" name="area-name" placeholder="Nombre del área" required>
            </div>
            <button type="submit" name="add_area" class="btn btn-primary">Agregar área</button>
        </form>
        </div>
      </div>
    </div>
    <div class="col-md-7">
    <div class="panel panel-default">
      <div class="panel-heading">
        <strong>
          <span class="glyphicon glyphicon-th"></span>
          <span>Lista de áreas</span>
       </strong>
      </div>
        <div class="panel-body">
          <table class="table table-bordered table-striped table-hover">
            <thead>
                <tr>
                    <th class="text-center" style="width: 50px;">#</th>
                    <th>Áreas</th>
                    <th class="text-center" style="width: 100px;">Acciones</th>
                </tr>
            </thead>
            <tbody>
              <?php foreach ($all_areas as $area):?>
                <tr>
                    <td class="text-center"><?php echo count_id();?></td>
                    <td><?php echo remove_junk(ucfirst($area['name_area'])); ?></td>
                    <td class="text-center">
                      <div class="btn-group">
                        <a href="edit_workArea.php?id=<?php echo (int)$area['id_area'];?>"  class="btn btn-xs btn-warning" data-toggle="tooltip" title="Editar">
                          <span class="glyphicon glyphicon-edit"></span>
                        </a>
                        <a href="delete_workArea.php?id=<?php echo (int)$area['id_area'];?>"  class="btn btn-xs btn-danger" data-toggle="tooltip" title="Eliminar">
                          <span class="glyphicon glyphicon-trash"></span>
                        </a>
                      </div>
                    </td>

                </tr>
              <?php endforeach; ?>
            </tbody>
          </table>
       </div>
    </div>
    </div>
   </div>
  </div>
  <?php include_once('layouts/footer.php'); ?>
