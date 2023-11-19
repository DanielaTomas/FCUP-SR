<?php 
  declare(strict_types = 1); 

  require_once('database/book.class.php')
?>

<?php function drawBooks(array $books) { ?>
  <h2>Books</h2>
  <section id="books">
    <?php foreach($books as $book) { ?> 
      <article>
        <img src="https://picsum.photos/200?<?=$book->id?>">
        <a href="book.php?id=<?=$book->id?>"><?=$book->title?></a>
      </article>
    <?php } ?>
  </section>
<?php } ?>

<?php function drawBook(Book $book) { ?>
  <h2><?=$book->title?></h2>
<?php } ?>