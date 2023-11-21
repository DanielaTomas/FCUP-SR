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
    <form action="action_buy.php" method="post">
      <input type="hidden" name="id" value="<?=$book->id?>">
      <p style="color:green">In stock</p>
      <p>Quantity: <input name="quantity" type="number" value="<?=$book->title?>" min="1" max="<?=$book->stock?>" step="0"></p>
      <button type="submit">Buy</button>
    </form>
  <?php } else { ?>
    <p style="color:red">Out of stock</p>
  <?php } ?>
<?php } ?>