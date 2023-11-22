<?php declare(strict_types = 1); ?>

<?php function drawHeader(Session $session) { ?>
<!DOCTYPE html>
<html lang="en-US">
  <head>
    <title>Bookstore</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
  </head>
  <body>

    <header>
      <a href="ping.php"><button>Ping</button></a>
      <h1><a href="/">Bookstore</a></h1>
      <?php 
        if ($session::login()) drawLogoutForm($session);
      ?>
    </header>
    <section id="messages">
      <?php foreach ($session->getMessages() as $message) { ?>
        <article class="<?=$message['type']?>">
          <?=$message['text']?>
        </article>
      <?php } ?>
    </section>
    <main>
<?php } ?>

<?php function drawFooter() { ?>
    </main>

    <footer>
      Bookstore &copy; 2023
    </footer>
  </body>
</html>
<?php } ?>

<?php function drawLoginForm() { ?>
  <div class="login-container">
    <form action="action_login.php" method="post" class="login-form">
      <h2>Login</h2>
      <div class="input-group">
        <label for="Email">Email</label>
        <input type="text" id="email" name="email" placeholder="email">
      </div>
      <div class="input-group">
        <label for="password">Password</label>
        <input type="password" id="password" name="password" placeholder="password">
      </div>
      <button type="submit">Login</button>
    </form>
  </div>
<?php } ?>

<?php function drawLogoutForm(Session $session) { ?>
  <form action="action_logout.php" method="post" class="logout-form">
    <?=$session->getName()?>
    <button type="submit">Logout</button>
  </form>
<?php } ?>