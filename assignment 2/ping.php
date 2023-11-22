<?php
  declare(strict_types = 1);

  require_once('classes/session.class.php');
  $session = new Session();

  require_once('database/connection.db.php');
  require_once('templates/common.tpl.php');
  require_once('templates/ping.tpl.php');

  $db = getDatabaseConnection();

  drawHeader($session);
  drawPing();
  drawFooter();
?>

