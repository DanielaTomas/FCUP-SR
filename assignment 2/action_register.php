<?php
  declare(strict_types = 1);

  require_once('classes/session.class.php');
  $session = new Session();

  require_once('database/connection.db.php');
  require_once('classes/customer.class.php');

  $db = getDatabaseConnection();
  $id = Customer::maxid($db);
  $success = Customer::registerCustomer($db, $id, $_POST['registerfirstname'], $_POST['registerlastname'], $_POST['registeremail'], sha1($_POST['registerpassword']));

  if ($success) {
      $session->addMessage('success', 'Registration successful!');
    }
    else {
      $session->addMessage('error', "Error!");
    }

  header('Location: index.php');

?>