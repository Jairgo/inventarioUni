
<?php
require 'login/Sql.php';
require 'login/databaseConnect.php';
require 'login/Functions.php';
require 'login/Sessions.php';

$session->isUserLoggedIn(true);

$array = [];

if(isset($_POST['numero'])){
  $array[] = "numero";
  unset ($_POST['numero']);
}
if(isset($_POST['nombrecompleto'])){
  $array[] = "nombrecompleto";
  unset ($_POST['nombrecompleto']);
}
if(isset($_POST['area'])){
  $array[] = "area";
  unset ($_POST['area']);
}
if(isset($_POST['rfc'])){
  $array[] = "rfc";
  unset ($_POST['rfc']);
}
if(isset($_POST['edad'])){
  $array[] = "edad";
  unset ($_POST['edad']);
}
if(isset($_POST['sexo'])){
  $array[] = "sexo";
  unset ($_POST['sexo']);
}
if(isset($_POST['salario'])){
  $array[] = "salario";
  unset ($_POST['salario']);
}
//print_r($array);
//$longModal = count($forQuery);
//global $connect;

try {
  $long = count($array);
  $rows = [];
  if($long!=0){
    $rows = makeQuery(implode(",",$array));
  }
  //$rows = makeQuery('salario');
  //print_r ($rows); 
} catch (\PDOException $e) {
  echo $e->getMessage();
}

/*
$array = "idusuario,nombre,apaterno,email";
$products_sold = makeQuery($array);*/
?>

<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Propuesta - 2019</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login/css/util.css">
	<link rel="stylesheet" type="text/css" href="login/css/main.css">
  <link rel="stylesheet" type="text/css" href="cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css">


</head>

<body>

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark static-top">
    <div class="container">
      <a class="navbar-brand" href="#">Dif - Prediseño</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active">
            <a class="nav-link" href="#">inicio
              <span class="sr-only">(current)</span>
            </a>
          </li>
          <!--<li class="nav-item">
            <a class="nav-link" href="#" id="buttonPDF" value="Export">Descargar PDF</a>
          </li>-->
          <li class="nav-item">
            <a class="nav-link" href="#" data-toggle="modal" data-target="#exampleModal">Generar reporte</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="logout.php">salir</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Page Content -->
  <div class="container">
    <div class="row">
      <div class="col-lg-12 text-center">
        <h1 class="mt-5"><?php echo display_msg($msg); ?></h1>
        <p class="lead">Genera los reportes que necesites<br>Puedes elegir entre estas opciones:</p>

        <!---------TABLA----->
        <table id="tblusers" class="table table-striped" style="text-align:center;">
          <!------ENCABEZADOS---->
          <thead>
          <tr>
            <?php for($i=0; $i<$long; $i++){ ?>
              <th><?php echo(strtoupper($array[$i]));?><th>
            <?php }?>
          </tr>  
          </thead>
          <!--///////ENCABEZADOS////-->
          <!------INFORMACION---->
          <tbody>
          <?php foreach($rows as $row){ ?>
            <tr>
              
                <?php 
                  for($i=0; $i<$long; $i++){
                    ?><td><?php print_r($row[$array[$i]]);?><td><?php
                  }
                ?>
              
            </tr>
            <?php }?>
          </tbody>
          <!--//////INFORMACION////-->
        </table>
        <!---------TABLA----->

        <ul class="list-unstyled">
          <li>Bootstrap 4.3.1</li>
          <li>jQuery 3.4.1</li>
        </ul>
      </div>
    </div>
  </div>
  <!-- Modal -->
<form action="index.php" method="POST">
  <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Generar reporte</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <!---modalbody--->
        <div class="modal-body">
          Eliga los campos que desee consultar:
          <BR>
          <div class="row">
            <div class="col">
              <div class="custom-control custom-switch">
                <input name="numero" type="checkbox" class="custom-control-input" id="numero">
                <label class="custom-control-label" for="numero">IDUSUARIO</label>
              </div>
              <div class="custom-control custom-switch">
                <input name="nombrecompleto" type="checkbox" class="custom-control-input" id="nombrecompleto">
                <label class="custom-control-label" for="nombrecompleto">NOMBRE COMPLETO</label>
              </div>
              <div class="custom-control custom-switch">
                <input name="area" type="checkbox" class="custom-control-input" id="area">
                <label class="custom-control-label" for="area">AREA</label>
              </diV>
              <div class="custom-control custom-switch">
                <input name="rfc" type="checkbox" class="custom-control-input" id="rfc">
                <label class="custom-control-label" for="rfc">RFC</label>
              </div>
            </div>
            <div class="col">
              <div class="custom-control custom-switch">
                <input name="edad" type="checkbox" class="custom-control-input" id="edad">
                <label class="custom-control-label" for="edad">EDAD</label>
              </div>
              <div class="custom-control custom-switch">
                <input name="sexo" type="checkbox" class="custom-control-input" id="sexo">
                <label class="custom-control-label" for="sexo">SEXO</label>
              </div>
              <div class="custom-control custom-switch">
                <input name="salario" type="checkbox" class="custom-control-input" id="salario">
                <label class="custom-control-label" for="salario">SALARIO</label>
              </diV>
            </div>
          </div>
        </div>
        <!---modalbody--->
            <div class="modal-footer">
              <button type="button" class="login100-form-btn-close" data-dismiss="modal">Cerrar</button>
              <button type="submit" class="login100-form-btn">Enviar cambios</button>
            </div>
      </div>
    </div>
  </div>
  <!-- Modal -->
  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.slim.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  
  <!---------------------------------------->
  <script src="datatable/jquery-3.3.1.js"></script>
  <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.js"></script>
  <script src="datatable/dataTables.editor.min.js"></script>
  <script src="datatable/dataTables.select.min.js"></script>
  <script src="datatable/dataTables.colReorder.min.js"></script>
  <script src="datatable/dataTables.buttons.min.js"></script>
  <script src="datatable/jszip.min.js"></script>
  <script src="datatable/pdfmake.min.js"></script>
  <script src="datatable/vfs_fonts.js"></script>
  <script src="datatable/buttons.html5.min.js"></script>--
  <script src="datatable/buttons.print.min.js"></script>--


  <!---------------------------------------->
  <script>
$(document).ready( function () {
    $('#tblusers').DataTable({
      dom:'Bfrtip',
      buttons:[
        'excelHtml5',
        'pdfHtml5'
      ]
      columns: [
            { title: "Imagen" ,render: getImg }
        ]
    });
} );

function getImg(data, type, full, meta) {
       //
       return '<img  src="uploads/products/filter.jpg" />';
    }
</script>
  <!------------------------------------------------------------------->
</body>

</html>

