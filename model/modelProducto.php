<?php
require_once("./model/PDOconnection.php");
if (!isset($_SESSION)) {
  session_start();
}

class ModelProducto{
  private static $instance;

  public function getInstance(){
  if (!isset(self::$instance)) {
    self::$instance = new self();
  }
  return self:: $instance;
  }

  private function __construct(){
  }

  public function consulta($query)
  {
    $model = new PDOConnection;
    $connection = $model->getConnection();
    $stmt = $connection->prepare($query);
    if ($stmt) {
      $stmt->execute();
      $resultado = $stmt->fetchAll();
         return ($resultado);
    }
  }

  public function getProductos($value='')
  {
    $query="SELECT * FROM producto";
    return $this->consulta($query);
  }

  public function confirmarCompra()
  {
    $monto = productoController::getInstance()->getTotal();
    $cantidad = productoController::getInstance()->getCantidadProductos();
    $query = "INSERT INTO venta (`fecha`, `monto`, `cantidadItems`) VALUES (null,$monto,$cantidad)";
    $this->consulta($query);
  }

}
?>
