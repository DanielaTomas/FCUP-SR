<?php
    declare(strict_types = 1);

    require_once('classes/session.class.php');
    $session = new Session();

    if (!$session->login()) header('Location: index.php');

    require_once('database/connection.db.php');
    require_once('classes/customer.class.php');
    require_once('classes/book.class.php');

    $db = getDatabaseConnection('sqlite:database/database.db');
    
    $quantity = intval($_POST['quantity']);
    $bookId = intval($_POST['id']);
    $book = Book::getBook($db, $bookId);

    if ($book->stock - $quantity <= 0) {
        $stock = 0;
    }
    else {
        $stock = $book->stock - $quantity;
    }

    Customer::buyBook($db, $stock, $bookId);

    $session->addMessage('success', "Purchase successfully completed!");

    header('Location: book.php?id=' . $bookId);

?>