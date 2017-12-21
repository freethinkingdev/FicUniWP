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
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'ficuni');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', 'root');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         ';7%!es_~J/):`t8<*/AMEps!m&.8FJ9jW~Ti.}9/;5V,$2z+n_xb!_7*yb hTLvF');
define('SECURE_AUTH_KEY',  '13Qyc9/|F{J[By@joXJzxM%!nVJR)vvV3, 3|`+k57GSb(5U~V2r2J,~@|>!=L>T');
define('LOGGED_IN_KEY',    '|<f?_&`Dgy8D5pBcn@0H90(z-82*`WaTeBMoY;~NlW_rgHvtb4#= aXpJJdp=_xr');
define('NONCE_KEY',        '*4TP=eU>cZo!kOXEYbUrPBL%WSVOxx(`yiM[#uqHi}-TyPo6q<:m~`B}R:8d},Tj');
define('AUTH_SALT',        ';/*^e`moC.[%+[UHzSs1?cR=jjS,Awq-2QA]ofD<|rkJ!kvKm%hI(Ux 7[Z$N4&I');
define('SECURE_AUTH_SALT', '/ +zlt W BOH0O8P{y_V*(Bp):kqc&wp=!lse#M0-;f_ywkk1qRQihQC/*IH2=A*');
define('LOGGED_IN_SALT',   '&F6!xkD1} E;M4XM^R$enD.$scV&xIv[*xM}nPjhb+ex9( Im-e>}fH31ingPhuE');
define('NONCE_SALT',       'j{H4n<oC#&:6K$`hww;5:y%Xlxnsk]QBdpc0dZ$zALMav.g9.,`?vC=mw^c[]|,6');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
