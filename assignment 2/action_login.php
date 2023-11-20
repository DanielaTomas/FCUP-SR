<?php
  declare(strict_types = 1);

  require_once('classes/session.class.php');
  $session = new Session();

  require_once('database/connection.db.php');
  require_once('classes/customer.class.php');

  $db = getDatabaseConnection();

  $customer = Customer::getCustomerWithEmail($db, $_POST['email']);

  if(!$customer) {
    $session->addMessage('error', "Invalid email " . $_POST['email']);
  }
  else {
    $customer = Customer::getCustomerWithPassword($db, $_POST['email'], $_POST['password']);

    if ($customer) {
      $session->setId($customer->id);
      $session->setName($customer->name());
      $session->addMessage('success', 'Login successful!');
    }
    else {
      $session->addMessage('error', "Invalid password " . $_POST['password']);
    }
  }

  header('Location: ' . $_SERVER['HTTP_REFERER']);
?>