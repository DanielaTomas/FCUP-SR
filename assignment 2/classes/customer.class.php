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

    static function getCustomerWithEmail(PDO $db, string $email) : ?Customer {
      $query = '
      SELECT customerId, firstName, lastName, email
      FROM Customer 
      WHERE lower(email) = "' . strtolower($email) . '"
      ';

      $stmt = $db->query($query);
  
      if ($customer = $stmt->fetch()) {
        return new Customer(
          $customer['customerId'],
          $customer['firstName'],
          $customer['lastName'],
          $customer['email']
        );
      }

      return null;
    }
    
    static function getCustomerWithPassword(PDO $db, string $email, string $password) : ?Customer {
      $query = '
      SELECT customerId, firstName, lastName, email
      FROM Customer 
      WHERE lower(email) = "' . strtolower($email) . '" AND password = "' . sha1($password) . '"
      ';

      $stmt = $db->query($query);
  
      if ($customer = $stmt->fetch()) {
        return new Customer(
          $customer['customerId'],
          $customer['firstName'],
          $customer['lastName'],
          $customer['email']
        );
      }

      return null;
    }

    static function registerCustomer($db, int $id, string $firstName, string $lastName, string $email, string $password){
  
      $query = "
        INSERT INTO Customer(customerId, firstName, lastName, email, password)
        VALUES ('$id', '$firstName', '$lastName', '$email', '$password')
      ";
    
      return $db->query($query);
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