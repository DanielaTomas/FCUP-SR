<?php
  declare(strict_types = 1);

  class Book {
    public int $id;
    public string $title;
    public string $img;

    public function __construct(int $id, string $title, string $img)
    { 
      $this->id = $id;
      $this->title = $title;
      $this->img = $img;
    }

    static function getBooks(PDO $db, int $count) : array {
      $stmt = $db->prepare('SELECT bookId, title, img FROM Book LIMIT ?');
      $stmt->execute(array($count));
  
      $books = array();
      while ($book = $stmt->fetch()) {
        $books[] = new Book(
          $book['bookId'],
          $book['title'],
          $book['img']
        );
      }
  
      return $books;
    }

    static function getBook(PDO $db, int $id) : Book {
      $stmt = $db->prepare('SELECT bookId, title, img FROM Book WHERE bookId = ?');
      $stmt->execute(array($id));
  
      $book = $stmt->fetch();
  
      return new Book(
        $book['bookId'], 
        $book['title'],
        $book['img']
      );
    }
    
    static function countBooks(PDO $db){
      $stmt = $db->prepare('
      SELECT MAX(bookId)
      FROM Book
      ');
      $stmt->execute(array());
      $max = $stmt->fetch();

    return $max['MAX(bookId)'];
    }
  }
?>