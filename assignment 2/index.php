<?php
  declare(strict_types = 1);

  require_once('classes/session.class.php');
  $session = new Session();

  require_once('database/connection.db.php');
  require_once('classes/book.class.php');

  require_once('templates/common.tpl.php');
  require_once('templates/book.tpl.php');

  $db = getDatabaseConnection();

  drawHeader($session);
  if ($session::login()) {
    #$books = Book::getBooks($db, intval(Book::countBooks($db)));
    $books = Book::getBooks($db, 40);
    drawBooks($books);
  }
  else drawLoginForm();
  drawFooter();
?>