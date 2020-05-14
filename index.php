
<?php
  ob_start();
  require_once('includes/load.php');
  if($session->isUserLoggedIn(true)) { redirect('home.php', false);}
?><?php include_once('layouts/header1.php'); ?>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Sistema simple de Inventario</title>
    <link rel="stylesheet" href="style.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" charset="utf-8"></script>
  </head>
  <body>

  <form method="post" action="auth.php" class="login-form">
  <?php echo display_msg($msg); ?>
        <h1>Bienvenido</h1>
        <div class="txtb">
          <input type="text" name="username">
          <span data-placeholder="Usuario"></span>
        </div>
        <div class="txtb">
          <input type="password" name= "password">
          <span data-placeholder="Contraseña"></span>
        </div>

        <input type="submit" class="logbtn" value="Iniciar Sesión">

        <div class="bottom-text">
          Para mayor soporte envía correo a  <a href="mailto:jair.gomezv06@anahuac.mx?subject=Soporte para sistema de Inventarios">jair.gomezv06@anahuac.mx</a>
        </div>
      </form>

      <script type="text/javascript">
      $(".txtb input").on("focus",function(){
        $(this).addClass("focus");
      });

      $(".txtb input").on("blur",function(){
        if($(this).val() == "")
        $(this).removeClass("focus");
      });

      </script>


  </body>
</html>