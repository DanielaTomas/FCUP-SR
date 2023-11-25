<?php
  declare(strict_types = 1);

  class Customer {
    public int $id;
    public string $firstName;
    public string $lastName;
    public string $email;

    public function __construct(int $id, string $firstName, string $lastName, string $email)
    {
      $this->id = $id;
      $this->firstName = $firstName;
      $this->lastName = $lastName;
      $this->email = $email;
    }

    function name() {
      return $this->firstName . ' ' . $this->lastName;
    }
    
    static function getCustomerWithPassword(PDO $db, string $email, string $password) : ?Customer {

      $stmt = $db->prepare('
        SELECT customerId, firstName, lastName, email, password
        FROM Customer 
        WHERE lower(email) = ?
      ');

      $stmt->execute(array(strtolower($email)));
      $customer = $stmt->fetch();
      
      if ($customer && password_verify($password, $customer['password'])) {
        return new Customer(
          $customer['customerId'],
          $customer['firstName'],
          $customer['lastName'],
          $customer['email']
        );
      }

      return null;
    }

    static function registerCustomer(PDO $db, int $id, string $firstName, string $lastName, string $email, string $password) : bool {
      $options = ['cost' => 12];
      $hashedPassword = password_hash($password, PASSWORD_DEFAULT, $options);

      $stmt = $db->prepare('INSERT INTO Customer (customerId, firstName, lastName, email, password) VALUES (?, ?, ?, ?, ?)');
      return $stmt->execute([$id, $firstName, $lastName, $email, $hashedPassword]);
    }

    static function maxid(PDO $db){
      $stmt = $db->prepare('
      SELECT MAX(customerId)
      FROM Customer
      ');
      $stmt->execute(array());
      $max = $stmt->fetch();
      return $max['MAX(customerId)']+1;
    }

    static function buyBook(PDO $db, int $stock, int $id) {
      $stmt = $db->prepare('UPDATE Book SET stock = ? WHERE bookId = ?');
      $stmt->execute(array($stock, $id));
    }

  }
?>