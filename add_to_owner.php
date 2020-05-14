<?php
  require_once('includes/load.php');

  if(isset($_POST['add_sale'])){
    $req_fields = array('quantity','s_categorie','s_name','s_media','s_id');
    validate_fields($req_fields);
        if(empty($errors)){
          $idUsuario = (int)$_GET['id'];//poner del get id
          $s_qty     = $db->escape((int)$_POST['quantity']);
          $s_name     = $db->escape($_POST['s_name']);
          $s_cate     = $db->escape((int)$_POST['s_categorie']);
          $s_media_id     = $db->escape((int)$_POST['s_media']);
          $p_id      = $db->escape((int)$_POST['s_id']);
          $s_date    = make_date();

          $sql  = "INSERT INTO productsowner (";
          $sql .= " id_dueño,cantidad,nombre,idCategoria,idmedia,idProducto,date";
          $sql .= ") VALUES (";
          $sql .= "'{$idUsuario}','{$s_qty}','{$s_name}','{$s_cate}','{$s_media_id}','{$p_id}','{$s_date }'";
          $sql .= ")";

                if($db->query($sql)){
                  update_product_qty($s_qty,$p_id);
                  $session->msg('s',"Venta agregada ");
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