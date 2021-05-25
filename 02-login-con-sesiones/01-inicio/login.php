<?php require( 'init.php' ) ?>
<?php
/*Login class. It handles $_SESSION array to save 'user' 
in case admin logs in. 'init.php' is required. */
$error = false;
 
if ( isset( $_POST['submit-login'] ) ) {
	if ( ! check_hash( 'login', $_POST['hash'] ) ) {
		die( 'Hackeando, no?' );
	}

	if ($_POST['username'] === 'eduardo' && $_POST['password'] === 'dudu123') {
		$_SESSION['user'] = 'eduardo';
	} else {
		$error = true;
	}
}
/*If the user is already logged in
and he tries to Log in again, he gets redirected to 'index.php'.*/
if ($_SESSION['user'] === 'eduardo') {
	redirect_to('index.php');
}

var_dump($_SESSION);
?>

//Header is required.
<?php require( 'templates/header.php' ); ?>

<h2>Login</h2>

//Error message in case of wrong password or user.
<?php if ( $error ): ?>
	<div class="error"><?php echo "Error de usuario o contraseña." ?></div>
<?php endif; ?>

/** 
* Form with username and password. Post method. Hidden camp is also 
* introduced to generate a hashcode. Submit input also implemented.
*/
<form action="" method="post">
	<label for="username">Usuario</label>
	<input type="text" name="username" id="username">

	<label for="password">Contraseña</label>
	<input type="password" name="password" id="password">

	<input type="hidden" name="hash" value="<?php echo htmlspecialchars( generate_hash( 'login' ), ENT_QUOTES ); ?>">

	<p>
		<input type="submit" name="submit-login" value="Login">
	</p>
</form>

//Footer is required.
<?php require( 'templates/footer.php' ); ?>
