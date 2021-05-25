<?php

/**
 * Redirige a una URL
 *
 * @param $path
 */
function redirect_to( $path ) {
	header( 'Location: ' . SITE_URL . '/' . $path );
	die();
}

/**
 * Genera una secuencia alfanumérica
 *
 * @param $action
 *
 * @return string
 */
function generate_hash( $action ) {
	return md5( $action );
}

/**
 * Comprueba si una secuencia alfanumérica es correcta
 *
 * @param $action
 * @param $hash
 *
 * @return bool
 */
function check_hash( $action, $hash ) {
	if ( generate_hash( $action ) == $hash ) {
		return true;
	}
	return false;
}

//Returns true if admin is logged in.
function is_logged_in() {
	$is_user_logged_in = isset( $_SESSION['user'] ) && $_SESSION['user'] === ADMIN_USER;
	return $is_user_logged_in;
}

/**
 * Returns true if 'username' and 'password' are OK or false if not OK.
 *
 * @param $username
 * @param $password
 *
 * @return bool
 */
function login( $username, $password ) {
	if ( $username === ADMIN_USER && $password === ADMIN_PASS ) {
		$_SESSION['user'] = ADMIN_USER;
		return true;
	}

	return false;
}

//Unset empties 'user' from $_SESSION, then destroys session.
function logout() {
	unset( $_SESSION['user'] );
	redirect_to( 'index.php' );
	session_destroy();
}
