<?php
  declare(strict_types = 1);

  session_start();

  require_once('database/connection.db.php');

  require_once('database/book.class.php');

  require_once('templates/common.tpl.php');
  require_once('templates/book.tpl.php');

  $db = getDatabaseConnection();

  $book = book::getBook($db, intval($_GET['id']));

  drawHeader();
  drawBook($book);
  drawFooter();
?>