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
    
    static function getCustomerWithPassword(PDO $db, string $email, string $password) : ?Customer {
      $stmt = $db->prepare('
        SELECT CustomerId, FirstName, LastName, Address, Phone, Email
        FROM Customer 
        WHERE lower(email) = ? AND password = ?
      ');

      $stmt->execute(array(strtolower($email), sha1($password)));
  
      if ($customer = $stmt->fetch()) {
        return new Customer(
          $customer['CustomerId'],
          $customer['FirstName'],
          $customer['LastName'],
          $customer['Address'],
          $customer['Phone'],
          $customer['Email']
        );
      }

      return null;
    }

  }
?>