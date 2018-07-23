<?php
require_once("./view/Visitante.php");
require_once("./model/modelProducto.php");
require_once("./controller/userController.php");

if (!isset($_SESSION)) {
  session_start();
}

class productoController{
  private static $instance;
  public function getInstance(){
  if (!isset(self::$instance)) {
    self::$instance = new self();
  }
  return self:: $instance;
  }

  private function __construct(){
  }

  public function agregarProducto($producto,$cantidad)
  {
    $prod = explode('$',$producto);
    $elem = array('prod'=>$prod,'cantidad'=>$cantidad,'total'=>$prod[1]*$cantidad);
    if (isset($_SESSION['productos'])) {
      array_push($_SESSION['productos'],$elem);
    }else {
      $_SESSION['productos']= array($elem);
    }
    userController::getInstance()->viewIndex();
  }

  public function limpiarCarrito()
  {
    if (isset($_SESSION)) {
      session_destroy();
      header("Location:index.php");
    }
  }

  public function getTotal()
  {
    $total=0;
    foreach ($_SESSION['productos'] as $prod) {
      $total+=$prod['total'];
    }
    return $total;
  }

  public function getCantidadProductos()
  {
    $cant = 0;
    foreach ($_SESSION['productos'] as $prod) {
      $cant += $prod['cantidad'];
    }
    return $cant;
  }

  public function confirmarCompra()
  {
    modelProducto::getInstance()->confirmarCompra();
    $this->limpiarCarrito();
  }

}

?>
