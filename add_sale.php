<?php
  $page_title = 'Agregar mobiliario';
  require_once('includes/load.php');
  // Checkin What level user has permission to view this page
   page_require_level(3);
?>

<?php

  if(isset($_POST['add_sale'])){
    $req_fields = array('s_id','s_categorie','s_media','quantity');
    validate_fields($req_fields);
        if(empty($errors)){
          $idUsuario = (int)$_GET['id'];//poner del get id
          $s_qty     = $db->escape((int)$_POST['quantity']);
          $s_name     = $db->escape($_POST['s_name']);
          $s_cate     = $db->escape((int)$_POST['s_categorie']);
          $s_media_id = $db->escape((int)$_POST['s_media']);
          $p_id      = $db->escape((int)$_POST['s_id']);
          $s_date    = make_date();

          $cons = "SELECT file_name FROM media WHERE id='$s_media_id'";
          $result = $db->query($cons);
          $fileDir = $result->fetch_array(MYSQLI_NUM);

          $sql  = "INSERT INTO productsowner (";
          $sql .= " id_dueño,cantidad,nombre,idCategoria,idmedia,idProducto,date,fileMedia";
          $sql .= ") VALUES (";
          $sql .= "'{$idUsuario}','{$s_qty}','{$s_name}','{$s_cate}','{$s_media_id}','{$p_id}','{$s_date }','{$fileDir[0]}'";
          $sql .= ")";

                if($db->query($sql)){
                  update_product_qty($s_qty,$p_id);
                  $session->msg('s',"Producto agregado al colaborador ");
                  redirect('add_sale.php?id='.$idUsuario, false);
                } else {
                  $session->msg('d','Lo siento, registro falló.');
                  redirect('add_sale.php', false);
                }
        } else {
           $session->msg("d", $errors);
           redirect('add_sale.php',false);
        }
  }

?>
<?php
if(isset($_GET['id'])){
  $idUsuario = (int)$_GET['id'];
  $ownerProds = find_all2('productsowner',$idUsuario);
?>

<?php include_once('layouts/header.php'); ?>
<div class="row">
  <div class="col-md-6">
    <?php echo display_msg($msg); ?>
    <form method="post" action="ajax.php" autocomplete="off" id="sug-form">
        <div class="form-group">
          <div class="input-group">
            <span class="input-group-btn">
              <button type="submit" class="btn btn-primary">Búsqueda</button>
            </span>
            <input type="text" id="sug_input" class="form-control" name="title"  placeholder="Buscar por el nombre del producto">
         </div>
         <div id="result" class="list-group"></div>
        </div>
    </form>
  </div>
</div>
<div class="row">

  <div class="col-md-12">
    <div class="panel panel-default">
    <div class="panel-heading clearfix">
        <strong>
          <span class="glyphicon glyphicon-th"></span>
          <?php $nombreColab = find_by_id('characters',$_GET['id']); ?>
          <span>Agregar productos a <?php echo($nombreColab['name']); ?></span>
       </strong>
      </div>
      <div class="panel-body">
      <form method="post" action="add_sale.php?id=<?php echo $idUsuario;?>">
          <table class="table table-bordered">
            <thead>
              <th> Producto </th>
              <th> Cantidad </th>
              <th> Acciones</th>
            </thead>
              <tbody  id="product_info"> </tbody>
          </table>
          </form>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading clearfix">
        <strong>
          <span class="glyphicon glyphicon-th"></span>
          <?php $nombreColab = find_by_id('characters',$_GET['id']); ?>
          <span>Editar productos de <?php echo($nombreColab['name']); ?></span>
       </strong>
      </div>
      <div class="panel-body">
         <table class="table table-bordered">
           <thead>
            <th> Imagen </th>
            <th> Producto </th>
            <th> Cantidad </th>
            <th> Agregado</th>
            <th> Acciones</th>
           </thead>
          <tbody>
          <?php

          
           foreach ($ownerProds as $row):
          ?>
            <tr>
              <td><img id="im" src="uploads/products/<?php echo($row["fileMedia"])?>" class="img-thumbnail zoom"/> </td>
              <td><?php echo($row["nombre"])?></td>
              <td><?php echo($row["cantidad"]) ?></td>
              <td><?php echo($row["date"]) ?></td>
              <td class="text-center">
                <a href="delete_prodown.php?id=<?php echo (int) $row['idProducto'];?>&iddueño=<?php echo($idUsuario);?>" class="btn btn-danger btn-xs"  title="Eliminar">
                  <span class="glyphicon glyphicon-trash"></span>
                </a>
              </td>
            </tr>
            <?php endforeach;}?>
          </tbody>
         </table>

      </div>
    </div>
  </div>

</div>

<?php include_once('layouts/footer.php'); ?>
