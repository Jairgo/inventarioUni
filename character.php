<?php
  $page_title = 'Lista de personajes';
  require_once('includes/load.php');
  // Checkin What level user has permission to view this page
   page_require_level(2);
  $products = find_all_characters();
?>
<?php include_once('layouts/header.php'); ?>
  <div class="row">
     <div class="col-md-12">
       <?php echo display_msg($msg); ?>
     </div>
    <div class="col-md-12">
      <div class="panel panel-default">
        <div class="panel-heading clearfix">
         <div class="pull-right">
           <a href="add_character.php" class="btn btn-primary">Agregar Colaborador</a>
         </div>
        </div>
        <div class="panel-body">
          <table class="table table-bordered">
            <thead>
              <tr>
                <th class="text-center" style="width: 15px;">#</th>
                <th class="text-center" style="width: 15%;"> Nombre</th>
                <th class="text-center" style="width: 15%;"> Apellidos </th>
                <th class="text-center" style="width: 20%;"> Puesto </th>
                <th class="text-center" style="width: 15%;"> Area </th>
                <th class="text-center" style="width: 10%;"> Agregado </th>
                <th class="text-center" style="width: 10%;"> Desplegar </th>
                <th class="text-center" style="width: 100px;"> Acciones </th>
              </tr>
            </thead>
            <tbody>
              <?php foreach ($products as $product):?>
              <tr>
                <td class="text-center"><?php echo count_id();?></td>
                <td ><?php echo remove_junk($product['name']); ?></td> <!---onclick="location.href='desglosePersona.php'" -->
                <td> <?php echo remove_junk($product['last_name']); ?></td>
                <td class="text-center"> <?php echo remove_junk($product['job']); ?></td>
                <td class="text-center"> <?php echo remove_junk($product['boss']); ?></td>
                <td class="text-center"> <?php echo read_date($product['date']); ?></td>
                <td class="text-center">
                <div class="btn-group">
                  <a href="desglosePersona.php?id=<?php echo (int)$product['id'];?>" class="btn btn-success"  title="Desglosar" data-toggle="tooltip">
                      <span class="glyphicon glyphicon-info-sign"></span>
                  </a>
                </div>
                <div class="btn-group">
                  <a href="add_sale.php?id=<?php echo (int)$product['id'];?>" role="button" class="btn btn-warning"  title="Agregar más" data-toggle="tooltip">
                      <span class="glyphicon glyphicon-plus"></span>
                  </a>
                </div>
                </td>
                <td class="text-center">
                  <div class="btn-group">
                    <a href="edit_character.php?id=<?php echo (int)$product['id'];?>" class="btn btn-info"  title="Editar" data-toggle="tooltip">
                      <span class="glyphicon glyphicon-edit"></span>
                    </a>
                  </div>
                  <div class="btn-group">
                    <a href="delete_character.php?id=<?php echo (int)$product['id'];?>" class="btn btn-danger"  title="Eliminar" data-toggle="tooltip">
                      <span class="glyphicon glyphicon-trash"></span>
                    </a>
                  </div>
                </td>
              </tr>
             <?php endforeach; ?>
            </tbody>
          </table>
          <div id="end" style="text-align:center;">
              <a href="add_character.php" class="btn btn-primary btn-xl">Agregar Colaborador</a>
          <div>
        </div>
      </div>
    </div>
  </div>
  <?php include_once('layouts/footer.php'); ?>
