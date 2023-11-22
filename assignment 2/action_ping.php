<?php
    declare(strict_types = 1);

    require_once('classes/session.class.php');
    $session = new Session();

    if (!$session->login()) header('Location: index.php');
?>

<h1>Ping Results</h1>

<?php
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $hostname = $_POST["hostname"];

        if (!empty($hostname)) {
            // prevent command injection:
            //$sanitizedHostname = escapeshellcmd($hostname);

            $pingResult = shell_exec("ping -c 4 " . $hostname);

            if (strpos($pingResult, "64 bytes from") !== false) {
                echo "<p style='color:green'>Book available at this location $hostname.</p>";
            } 
            else {
                echo "<p style='color:red'>Book not available at this location $hostname.</p>";
            }
            echo "<pre>Ping results for $sanitizedHostname:\n$pingResult</pre>";
        } 
        else {
            echo "<p>Please enter a valid hostname or IP.</p>";
        }
    }
?>

<a href="book.php?id=<?=intval($_POST['id'])?>">Go back</a>

