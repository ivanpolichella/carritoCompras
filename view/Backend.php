<?php
require_once("./view/TwigView.php");
/**
 *
 */
class Backend extends TwigView{

  public function showBackend($datos){
    echo (self::getTwig()->render('backend.twig.html',$datos));
  }

}

?>
