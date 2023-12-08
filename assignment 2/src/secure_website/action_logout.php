<?php
  declare(strict_types = 1);

  require_once('classes/session.class.php');
  $session = new Session();
  $session::logout();

  header('Location: ' . $_SERVER['HTTP_REFERER']);
?>