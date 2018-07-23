<?php
require_once("./view/TwigView.php");
/**
 *
 */
class Visitante extends TwigView{

  public function showIndex($productos,$carrito,$total){
      echo self::getTwig()->render('index.twig.html',array('productos' =>$productos,'carrito'=>$carrito,'total'=>$total));
  }

}

?>
