<?php

/**
 * Definitions that adjust application behaviors.
 */

/**
 * Define whether the installation is running on a local environment.
 * @since 0.1
 */
define('LOCAL_ENV', 1);

/**
 * Define whether the debug mode is turned on.
 * @since 0.1
 */
define('DEBUG_MODE', 1);

/**
 * Define whether PHP errors are displayed.
 * @see load.php
 * @since 0.1
 */
define('DEBUG_DISPLAY', 1);

/**
 * Define whether PHP errors are logged.
 * @see load.php
 * @since 0.1
 */
define('DEBUG_LOG', 1);

/**
 * Define the name of the table that is used to store user login info.
 * @see login.php
 * @since 0.1
 */
define('RESTAURANT_TABLE_NAME', 'restaurants');



/**
 * Database configurations.
 * 
 * Edit this to change the database connection settings, and to switch
 * between local environment and remote environment.
 * 
 * @since 0.1
 */


if (defined('LOCAL_ENV') && LOCAL_ENV) {


	// ** MySQL settings - You can get this info from your web host ** //
	/** The name of the database */
	define('DB_NAME', 'hackcmu');

	/** MySQL database username */
	define('DB_USER', 'root');

	/** MySQL database password */
	define('DB_PASSWORD', 'root');

	/** MySQL hostname */
	define('DB_HOST', 'localhost');

	/** MySQL connection port */
	define('DB_PORT', 8889);

	/** Database Charset to use in creating database tables. */
	define('DB_CHARSET', 'utf8');

	/** The Database Collate type. Don't change this if in doubt. */
	// define('DB_COLLATE', '');

	

} else {

	// ** MySQL settings - Local environment ** //
	/** The name of the database */
	define('DB_NAME', 'bigdata');

	/** MySQL database username */
	define('DB_USER', 'adminsnDGKLz');

	/** MySQL database password */
	define('DB_PASSWORD', 'kf9_XFQ9X7at');

	/** MySQL hostname */
	define('DB_HOST', '127.5.56.129');

	/** MySQL connection port */
	define('DB_PORT', 3306);

	/** Database Charset to use in creating database tables. */
	define('DB_CHARSET', 'utf8');

	/** The Database Collate type. Don't change this if in doubt. */
	// define('DB_COLLATE', '');

}



?>