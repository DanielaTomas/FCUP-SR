<?php
  declare(strict_types = 1);
?>

<h2>Ping Results</h2>
<?php
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $hostname = $_POST["hostname"];

        if (!empty($hostname)) {
            // prevent command injection:
            //$sanitizedHostname = escapeshellcmd($hostname);

            $pingResult = shell_exec("ping -c 4 " . $hostname);

            echo "<pre>Ping results for $sanitizedHostname:\n$pingResult</pre>";
        } 
        else {
            echo "<p>Please enter a valid hostname or IP.</p>";
        }
    }
?>

<a href="ping.php">Go back</a>

