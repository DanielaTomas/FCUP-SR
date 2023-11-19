<?php 
  declare(strict_types = 1); 

  require_once('database/book.class.php')
?>

<?php function drawBooks(array $books) { ?>
  <h2>Books</h2>
  <section id="books">
    <?php foreach($books as $book) { ?> 
      <article>
      <a href="book.php?id=<?=$book->id?>">
        <div class="image-container">
          <img src="../images/<?=$book->id?>.jpeg">
          <div class="overlay">
            <button>More details</button>
          </div>
        </div>
      </a>
      </article>
    <?php } ?>
  </section>
<?php } ?>

<?php function drawBook(Book $book) { ?>
  <h2><?=$book->title?></h2>
<?php } ?>