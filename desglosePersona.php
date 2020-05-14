<?php
  require_once('includes/load.php');
  // Checkin What level user has permission to view this page
   page_require_level(2);
$product = find_by_id('characters',(int)$_GET['id']);
if(!$product){
  $session->msg("d","Missing character id.");
  redirect('character.php');
}
?>

<?php
  $page_title = 'Inventario personal de '.$product['name'] ." ".$product['last_name'];

?>

<!DOCTYPE html>
<html lang="en">

<head>

  <!-- Bootstrap core CSS -->
  <!--<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">-->
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css">
  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/1.6.1/css/buttons.dataTables.min.css">

  <!---->

    <meta charset="UTF-8">
    <title><?php if (!empty($page_title))
           echo remove_junk($page_title);
            elseif(!empty($user))
           echo ucfirst($user['name']);
            else echo "Sistema simple de inventario";?>
    </title>
	
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker3.min.css" />
    <link rel="stylesheet" href="libs/css/main.css" />
    <!------------------////////////////---------------------------->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>

    <link href="https://cdn.jsdelivr.net/npm/select2@4.0.12/dist/css/select2.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/select2@4.0.12/dist/js/select2.min.js"></script>


</head>
<style>
.zoom:hover {
  -ms-transform: scale(2.5); /* IE 9 */
  -webkit-transform: scale(2.5); /* Safari 3-8 */
  transform: scale(2.5); 
}
</style>
<body>
  <!-- Page Content -->
  <div class="container">
    <div class="row">
      <div class="col-lg-12 text-center">
        <h1 class="mt-5"><?php echo display_msg($msg); ?></h1>
        <h3><?php echo (strtoupper($product['name'] . " " .$product['last_name'] ));?></h3>
        <!---------TABLA----->
        <table id="tblusers" class="display nowrap" style="text-align:center;">
          <!------ENCABEZADOS---->
          <thead>
            <tr>
              <th> Imagen </th>
              <th> Producto </th>
              <th> Cantidad </th>
              <th> Agregado</th>
              <th> Acciones</th>
            </tr>
        </thead>
          <!--///////ENCABEZADOS////-->
          <!------INFORMACION---->
          <tbody>
          <?php
          $idUsuario = (int)$_GET['id'];
          $ownerProds = find_all2('productsowner',$idUsuario);

           foreach ($ownerProds as $row):
          ?>
            <tr>
              <td><img id="im" src="uploads/products/<?php echo($row['fileMedia'])?>" class="img-thumbnail zoom"/> </td>
              <td><?php echo($row['nombre'])?></td>
              <td><?php echo($row['cantidad']) ?></td>
              <td><?php echo($row['date']) ?></td>
              <td class="text-center">
                <a href="delete_prodown.php?id=<?php echo (int) $row['idProducto'];?>&iddueño=<?php echo($idUsuario);?>" class="btn btn-danger btn-xs"  title="Eliminar">
                  <span class="glyphicon glyphicon-trash"></span>
                </a>
              </td>
            </tr>
            <?php endforeach;?>
          </tbody>
          <!--//////INFORMACION////-->
        </table>
        <!---------TABLA----->
      </div>
      <div class="header-date pull-left">
        <strong>
          <?php 
            date_default_timezone_set("America/Mexico_City");
            echo date("d/m/Y  g:i a");
          ?>
        </strong>
      </div>
      <div style="text-align:center;">
        <a style="color: white;font-weight: bold;" class="btn btn-success" href="character.php" role="button">Regresar</a>
        <a style="color: black" class="btn btn-warning" href="add_sale.php?id=<?php echo $idUsuario;?>" role="button">Añadir más productos</a>
      </div>
    </div>
  </div>
  <!-- Bootstrap core JavaScript -->
  <!--<script src="vendor/jquery/jquery.slim.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>-->
  
  <!---------------------------------------->
  <script src="datatable/jquery-3.3.1.js"></script>
  <script type="text/javascript" charset="utf8" src="datatable/jquery.dataTables.js"></script>
  <script src="datatable/dataTables.buttons.min.js"></script>
  <script src="datatable/buttons.flash.min.js"></script>
  <script src="datatable/jszip.min.js"></script>
  <script src="datatable/pdfmake.min.js"></script>
  <script src="datatable/vfs_fonts.js"></script>
  <script src="datatable/buttons.html5.min.js"></script>
  <script src="datatable/buttons.print.min.js"></script>
<!--
  <script src="datatable/dataTables.editor.min.js"></script>
  <script src="datatable/dataTables.select.min.js"></script>
  <script src="datatable/dataTables.colReorder.min.js"></script>
  
-->






  <!---------------------------------------->
  <script>
  
$(document).ready( function () {
    $('#tblusers').DataTable({
      dom:'Bfrtip',
      buttons:[
        {
            extend: 'pdfHtml5',
            exportOptions: {
                columns: [1,2,3]
            },
            messageBottom: "\n \n \n Por medio de este documento se valida que el colaborador acepta que cuenta con este mobiliario bajo su responsabilidad \n \n                           Firma de recibiido:  _____________________________________"
        }
        
      ]
    });
} );


</script>
  <!------------------------------------------------------------------->
</body>

</html>
