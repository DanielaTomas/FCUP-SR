<?php
  declare(strict_types = 1);
  
  require_once('classes/session.class.php');
  $session = new Session();

  if (!$session->login()) header('Location: index.php');

  require_once('database/connection.db.php');
  require_once('classes/book.class.php');

  require_once('templates/common.tpl.php');
  require_once('templates/book.tpl.php');

  $db = getDatabaseConnection();

  drawHeader($session);
  $book = book::getBook($db, intval($_GET['id']));
  drawBook($book);
  drawFooter();
?>