<?php

if ( ! file_exists( 'config.php' ) ) {
	die( 'ERROR:No existe config.php' );
}

//Session initialize!
session_start();

require 'config.php';

setlocale( LC_TIME, SITE_LANG );
date_default_timezone_set( SITE_TIMEZONE );

$app_db = mysqli_connect( DB_HOST, DB_USER, DB_PASSWORD, DB_DATABASE, DB_PORT );
if ( $app_db === false ) {
	die( 'Error al conectar con la base de datos' );
}

require( 'inc/posts.php' );
require( 'inc/helpers.php' );

if ( isset( $_GET['logout'] ) ) {
	//Delete 'user' from '$_SESSION' and redirects to  index in case of Log Out
	unset( $_SESSION['user'] );
	redirect_to( 'index.php' );
}
