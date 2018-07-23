<?php
  require_once("./controller/userController.php");
  require_once("./controller/productoController.php");

  if (isset($_GET['action'])) {
    switch ($_GET['action']) {
      case 'confirmarCompra':
        productoController::getInstance()->confirmarCompra();
        break;
      case 'limpiarCarrito':
        productoController::getInstance()->limpiarCarrito();

        break;
      case 'agregarProducto':
        if (isset($_POST['producto'])) {
          productoController::getInstance()->agregarProducto($_POST['producto'],$_POST['cantidad']);
        }
        break;
    }
  }else {
    userController::getInstance()->viewIndex();
  }
 ?>
