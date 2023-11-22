<?php 
  declare(strict_types = 1); 
?>

<?php function drawPing() { ?>
    <h2>Ping</h2>
    <form action="action_ping.php" method="post" class="ping">
    <label for="hostname">Enter IP or Hostname:</label>
    <input type="hidden" name="id" value="<?=$book->id?>">
    <input type="text" id="hostname" name="hostname">
    <button type="submit">Ping</button>

    <a href="ping.php">Go back</a>
<?php } ?>
