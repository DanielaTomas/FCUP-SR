<?php
  declare(strict_types = 1);

  class Book {
    public int $id;
    public string $title;
    public string $author;
    public string $descr;
    public float $price;
    public int $stock;

    public function __construct(int $id, string $title, string $author, string $descr, float $price, int $stock)
    { 
      $this->id = $id;
      $this->title = $title;
      $this->author = $author;
      $this->descr = $descr;
      $this->price = $price;
      $this->stock = $stock;
    }

    static function getBooks(PDO $db, int $count) : array {
      $stmt = $db->prepare('SELECT bookId, title, author, descr, price, stock FROM Book LIMIT ?');
      $stmt->execute(array($count));
  
      $books = array();
      while ($book = $stmt->fetch()) {
        $books[] = new Book(
          $book['bookId'],
          $book['title'],
          $book['author'],
          $book['descr'],
          $book['price'],
          $book['stock']
        );
      }
  
      return $books;
    }

    static function getBook(PDO $db, int $id) : Book {
      $stmt = $db->prepare('SELECT bookId, title, author, descr, price, stock FROM Book WHERE bookId = ?');
      $stmt->execute(array($id));
  
      $book = $stmt->fetch();
  
      return new Book(
        $book['bookId'], 
        $book['title'],
        $book['author'],
        $book['descr'],
        $book['price'],
        $book['stock']
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