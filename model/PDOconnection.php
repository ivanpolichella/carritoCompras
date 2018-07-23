<?php
/**
 *
 */
class PDOconnection{
  public function getConnection()
  {
    $host = "localhost";
    $db = "setentatreinta";
    $user = "root";
    $password = "";
    $connection = new PDO("mysql:host=$host;dbname=$db;",$user,$password);
    return $connection;

  }
}


?>
