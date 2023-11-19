<?php
  declare(strict_types = 1);

  class Book {
    public int $id;
    public string $title;

    public function __construct(int $id, string $title)
    { 
      $this->id = $id;
      $this->title = $title;
    }

    static function getBooks(PDO $db, int $count) : array {
      $stmt = $db->prepare('SELECT bookId, title FROM Book LIMIT ?');
      $stmt->execute(array($count));
  
      $books = array();
      while ($book = $stmt->fetch()) {
        $books[] = new Book(
          $book['bookId'],
          $book['title']
        );
      }
  
      return $books;
    }

    static function getBook(PDO $db, int $id) : Book {
      $stmt = $db->prepare('SELECT bookId, title FROM Book WHERE bookId = ?');
      $stmt->execute(array($id));
  
      $book = $stmt->fetch();
  
      return new Book(
        $book['bookId'], 
        $book['title']
      );
    }  
  }
?>