<?php
  $page_title = 'Agregar producto';
  require_once('includes/load.php');
  // Checkin What level user has permission to view this page
  page_require_level(2);
  $all_categories = find_all('categories');
  $all_photo = find_all('media');
?>
<?php
 if(isset($_POST['add_product'])){
   $req_fields = array('product-title','product-categorie','product-quantity','product-photo','description');
   validate_fields($req_fields);
   if(empty($errors)){
     $p_name  = remove_junk($db->escape($_POST['product-title']));
     $p_cat   = remove_junk($db->escape($_POST['product-categorie']));
     $p_qty   = remove_junk($db->escape($_POST['product-quantity']));
     $media_id   = remove_junk($db->escape($_POST['product-photo']));
     $desc   = remove_junk($db->escape($_POST['description']));


     $date    = make_date();
     $query  = "INSERT INTO products (";
     $query .=" name,quantity,categorie_id,media_id,date,description";
     $query .=") VALUES (";
     $query .=" '{$p_name}', '{$p_qty}','{$p_cat}', '{$media_id}', '{$date}', '{$desc}'";
     $query .=")";
     $query .=" ON DUPLICATE KEY UPDATE name='{$p_name}'";
     if($db->query($query)){
       $session->msg('s',"Producto agregado exitosamente. ");
       redirect('add_product.php', false);
     } else {
       $session->msg('d',' Lo siento, registro falló.');
       redirect('product.php', false);
     }

   } else{
     $session->msg("d", $errors);
     redirect('add_product.php',false);
   }

 }

?>
<?php $media_files = find_all('media');?>
<?php
  if(isset($_POST['submit'])) {
  $photo = new Media();
  $photo->upload($_FILES['file_upload']);
    if($photo->process_media()){
        $session->msg('s','Imagen subida al servidor.');
        redirect('add_product.php');
    } else{
      $session->msg('d',join($photo->errors));
      redirect('add_product.php');
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
            <span>Agregar producto</span>
            <div class="pull-right">
              <form class="form-inline" action="add_product.php" method="POST" enctype="multipart/form-data">
              <div class="form-group">
                <div class="input-group">
                  <span class="input-group-btn">
                    <!--<input type="file" name="file_upload" multiple="multiple" class="btn btn-primary btn-file"/>-->
                    <input type="file" name="file_upload" id="file_upload" class="btn btn-primary btn-file" accept="image/*" capture="camera" />
                 </span>
               </div>
               <button type="submit" name="submit" class="btn btn-success">Subir</button>
              </div>
             </form>
             
            </div>
         </strong><br><br>
        </div>
        <div class="panel-body">
         <div class="col-md-12">
          <form method="post" action="add_product.php" class="clearfix">
              <div class="form-group">
                <div class="input-group">
                  <span class="input-group-addon">
                   <i class="glyphicon glyphicon-th-large"></i>
                  </span>
                  <input type="text" class="form-control" name="product-title" placeholder="Título" required>
               </div>
              </div>
              <div class="form-group">
                <div class="row">
                  <div class="col-md-6">
                    <select class="form-control" name="product-categorie" required> 
                      <option value="" >Selecciona una categoría</option>
                    <?php  foreach ($all_categories as $cat): ?>
                      <option value="<?php echo (int)$cat['id'] ?>">
                        <?php echo $cat['name'] ?></option>
                    <?php endforeach; ?>
                    </select>
                  </div>
                  <div class="col-md-6">
                    <select class="form-control" name="product-photo">
                      <option value="">Selecciona una imagen</option>
                    <?php  foreach ($all_photo as $photo): ?>
                      <option value="<?php echo (int)$photo['id'] ?>">
                        <?php echo $photo['file_name'] ?></option>
                    <?php endforeach; ?>
                    </select>
                  </div>
                  <!---<div class="class="col-md-6">
                      <div class="form-group focus-2">
                        <input name="file_upload"  type="file" required/>
                      </div>								
                  </div>-->
                </div>
              </div>

              <div class="form-group">
               <div class="row">
                 <div class="col-md-4">
                    <div class="input-group">
                      <span class="input-group-addon">
                        <i class="glyphicon glyphicon-shopping-cart"></i>
                      </span>
                      <input type="number" class="form-control" name="product-quantity" placeholder="Cantidad" required>
                    </div>
                 </div>
                 <div class="col-md-8">
                    <div class="input-group">
                      <span class="input-group-addon">
                      <i class="glyphicon glyphicon-info-sign"></i>
                      </span>
                      <input type="text" class="form-control" name="description" placeholder="Descripción por comas" required>
                    </div>
                  </div>
               </div>
              </div>

              <button type="submit" name="add_product" class="btn btn-warning">Agregar producto</button>
          </form>
         </div>
        </div>
      </div>
    </div>
  </div>

<?php include_once('layouts/footer.php'); ?>
