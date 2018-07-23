<?php
require_once("./view/Visitante.php");
require_once("./model/modelProducto.php");
require_once("./controller/productoController.php");

if (!isset($_SESSION)) {
  session_start();
}

class userController{
  private static $instance;

  public function getInstance(){
  if (!isset(self::$instance)) {
    self::$instance = new self();
  }
  return self:: $instance;
  }

  private function __construct(){
  }


  public function viewIndex()
  {
    $productos=ModelProducto::getInstance()->getProductos();
    if (isset($_SESSION['productos'])) {
      $carrito = $_SESSION['productos'];
      $total = productoController::getInstance()->getTotal();
    }else {
      $carrito = null;
    }
    if (!isset($total)) {
      $total=0;
    }
    $view = new Visitante();
    $view->showIndex($productos,$carrito,$total);
  }

}

?>
