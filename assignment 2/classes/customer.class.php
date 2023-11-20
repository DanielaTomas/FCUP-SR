<?php
  declare(strict_types = 1);

  class Customer {
    public int $id;
    public string $firstName;
    public string $lastName;
    public string $address;
    public string $phone;
    public string $email;

    public function __construct(int $id, string $firstName, string $lastName, string $address, string $phone, string $email)
    {
      $this->id = $id;
      $this->firstName = $firstName;
      $this->lastName = $lastName;
      $this->address = $address;
      $this->phone = $phone;
      $this->email = $email;
    }

    function name() {
      return $this->firstName . ' ' . $this->lastName;
    }

    static function getCustomerWithEmail(PDO $db, string $email) : ?Customer {
      $query = '
      SELECT customerId, firstName, lastName, address, phone, email
      FROM Customer 
      WHERE lower(email) = "' . strtolower($email) . '"
      ';

      $stmt = $db->query($query);
  
      if ($customer = $stmt->fetch()) {
        return new Customer(
          $customer['customerId'],
          $customer['firstName'],
          $customer['lastName'],
          $customer['address'],
          $customer['phone'],
          $customer['email']
        );
      }

      return null;
    }
    
    static function getCustomerWithPassword(PDO $db, string $email, string $password) : ?Customer {
      /* 
        $stmt = $db->prepare('
        SELECT customerId, firstName, lastName, address, phone, email
        FROM Customer 
        WHERE lower(email) = ? AND password = ?
      ');
      */
      /*
      SELECT customerId, firstName, lastName, address, phone, email
      FROM Customer 
      WHERE lower(email) = "" OR 1=1 --" AND password = "hashed_password_here"
      */
      $query = '
      SELECT customerId, firstName, lastName, address, phone, email
      FROM Customer 
      WHERE lower(email) = "' . strtolower($email) . '" AND password = "' . sha1($password) . '"
      ';

      $stmt = $db->query($query);
      #$stmt->execute(array(strtolower($email), sha1($password)));
  
      if ($customer = $stmt->fetch()) {
        return new Customer(
          $customer['customerId'],
          $customer['firstName'],
          $customer['lastName'],
          $customer['address'],
          $customer['phone'],
          $customer['email']
        );
      }

      return null;
    }

  }
?>