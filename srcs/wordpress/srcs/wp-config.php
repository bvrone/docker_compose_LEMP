<?php

/**

 * The base configuration for WordPress

 *

 * The wp-config.php creation script uses this file during the

 * installation. You don't have to use the web site, you can

 * copy this file to "wp-config.php" and fill in the values.

 *

 * This file contains the following configurations:

 *

 * * MySQL settings

 * * Secret keys

 * * Database table prefix

 * * ABSPATH

 *

 * @link https://wordpress.org/support/article/editing-wp-config-php/

 *

 * @package WordPress

 */


// ** MySQL settings - You can get this info from your web host ** //

/** The name of the database for WordPress */

// define( 'DB_NAME', 'wordpress' );

define( 'DB_NAME', getenv('DB_NAME'));


// /** MySQL database username */

// define( 'DB_USER', 'wp_bvrone' );

define( 'DB_USER', getenv('DB_USER'));


// /** MySQL database password */

// define( 'DB_PASSWORD', 'fcb1e' );

define( 'DB_PASSWORD', getenv('DB_PASSWORD'));


// /** MySQL hostname */

// define( 'DB_HOST', 'mariadb' );

define( 'DB_HOST', getenv('DB_HOST'));


/** Database Charset to use in creating database tables. */

define( 'DB_CHARSET', 'utf8' );


/** The Database Collate type. Don't change this if in doubt. */

define( 'DB_COLLATE', '' );


define('FS_METHOD', 'direct');


define('WP_HOME', getenv('WP_SITE_URL'));

define('WP_SITEURL', getenv('WP_SITE_URL'));



#$dbvalues = array('DB_HOST', 'DB_NAME', 'DB_USER', 'DB_PASSWORD');

/** -------------------------------------------------------------*/

#foreach ($dbvalues as $dbvalue) {

#    define($dbvalue, getenv($dbvalue));

#}


/**#@+

 * Authentication Unique Keys and Salts.

 *

 * Change these to different unique phrases!

 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}

 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.

 *

 * @since 2.6.0

 */

define( 'AUTH_KEY',         ':,ms]~Oc%t|ohNmu],nXyLK(hIH64QLdVOv+ 5AnAQ1{.E:qD}*J<Gu[Zu4|D#6H' );

define( 'SECURE_AUTH_KEY',  'Og46OJ[Fo6vR)v`[Da`&0_|<gGp$:@Hy#<,X&4qI*D;z5!6A4DVAN(T c?>Vybgw' );

define( 'LOGGED_IN_KEY',    '#IKCx0sjJcY:y&U{IH7{]dsAVWaTos#_V,%P7lHNw.1td/W_+m=soogI<.WX7f[K' );

define( 'NONCE_KEY',        'r@Uj[YbBM*wlYZ|JX98(t$YAD+R>st~4YWYB+sAT{;Xck|}I{Q?e$)P}(98MI.2x' );

define( 'AUTH_SALT',        '~m]poJ#KZ(MgL&w6c}0)tn7tuJ7y|?$1T&n]!4qni,&:mhRp_#W%P$O(B%%/pkjD' );

define( 'SECURE_AUTH_SALT', '%rv)nnJnHO$aX@~^d1GX>4z!LmbY~Z8pb_95it:ATMJ04X Y%S*J2~J@7EwVG<lH' );

define( 'LOGGED_IN_SALT',   'c?G}Y]FB}6~Qw^46OSN>T^6Q4F)5aF4Y5es]V`EqdI31ks@biOp,t7$o$H_Flnwj' );

define( 'NONCE_SALT',       'uM4$Wj}@A<wsQ(pB^7e5g> ,R3t~>_UnF#rq9W.n)M2~L+V)O:decy=lbNln<K1z' );


/**#@-*/


/**

 * WordPress Database Table prefix.

 *

 * You can have multiple installations in one database if you give each

 * a unique prefix. Only numbers, letters, and underscores please!

 */

$table_prefix = 'wp_';


/**

 * For developers: WordPress debugging mode.

 *

 * Change this to true to enable the display of notices during development.

 * It is strongly recommended that plugin and theme developers use WP_DEBUG

 * in their development environments.

 *

 * For information on other constants that can be used for debugging,

 * visit the documentation.

 *

 * @link https://wordpress.org/support/article/debugging-in-wordpress/

 */

define( 'WP_DEBUG', false );


/* That's all, stop editing! Happy publishing. */


/** Absolute path to the WordPress directory. */

if ( ! defined( 'ABSPATH' ) ) {

	define( 'ABSPATH', __DIR__ . '/' );

}


/** Sets up WordPress vars and included files. */

require_once ABSPATH . 'wp-settings.php';

