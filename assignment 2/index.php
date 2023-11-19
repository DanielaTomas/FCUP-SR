<?php
  declare(strict_types = 1);

  session_start();

  require_once('database/connection.db.php');
  require_once('database/book.class.php');

  require_once('templates/common.tpl.php');
  require_once('templates/book.tpl.php');

  $db = getDatabaseConnection();

  #$books = Book::getBooks($db, intval(Book::countBooks($db)));
  $books = Book::getBooks($db, 40);

  drawHeader();
  if (isset($_SESSION['id'])) drawBooks($books);
  else drawLoginForm();
  drawFooter();
?>