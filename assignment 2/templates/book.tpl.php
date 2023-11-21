<?php 
  declare(strict_types = 1); 

  require_once('classes/book.class.php')
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
  <img src="../images/<?=$book->id?>.jpeg">
  <p>Title: <?=$book->title?></p>
  <p>Author: <?=$book->author?></p>
  <p>Description: <?=$book->descr?></p>
  <p>Price: <?=$book->price?>€</p>
  <?php if($book->stock > 0) { ?>
    <p>Quantity: <input name="n" type="number" value="1" min="1" max="<?=$book->stock?>" step="0"></p>
    <form method="get">
      <input type="submit" value="Buy">
    </form>
  <?php } else { ?>
    <p style="color:red">Out of stock</p>
  <?php } ?>
<?php } ?>