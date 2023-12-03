<?php
    require_once('templates/common.tpl.php');
    require_once('classes/session.class.php');
    $session = new Session();
    drawHeader($session);
?>
    <body>
        <h2>Registration<br></h2>
        <div id="registration">
          <form action="action_register.php" method="post" autocomplete="off">
              <label for="registerfirstname"><p>First Name</p></label>
              <input type="text" name="registerfirstname">

              <label for="registerlastname"><p>Last Name</p></label>
              <input type="text" name="registerlastname">

              <label for="registeremail"><p>Email</p></label>
              <input type="text" name="registeremail">

              <label for="registerpassword"><p>Password</p></label>
              <input type="password" name="registerpassword">
              <br><br><button type="submit" id="register" name="register" value="Register">Submit</button>
          </form>
        </div>
    </body>
<?php
    drawFooter();
?>