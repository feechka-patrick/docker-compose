<?php

define( 'DB_NAME', WORDPRESS_NAME );

define( 'DB_USER', WORDPRESS_USER );

define( 'DB_PASSWORD', WORDPRESS_PASSWORD );

define( 'DB_HOST', WORDPRESS_HOST ); 

define( 'DB_CHARSET', 'utf8' );

define( 'DB_COLLATE', '' );

define( 'WP_ALLOW_REPAIR', true ); 

define('AUTH_KEY',         ';FB*d&?o9r<dMoLcG]R?c(d^Hj(3mr!`LjBFw2S}Rc_b:FY{:YfBSPil1Uy0^1=$');
define('SECURE_AUTH_KEY',  '0Q0t0.x^sw):N3y|Eg-OIvnd_wG0_N}pHPq9!zo5~(Rp|4:/j+.q!UthLw{[xd(q');
define('LOGGED_IN_KEY',    '*]* #8k_-J!GmZc5Ph;X~RNwhmd|_F+E>-OX0&d;gsHR5Qv|XWa%mqaib62#X|?T');
define('NONCE_KEY',        'V+i<O;TKr<w9RqAOfC0rs1^bIrFWgiu|8e-]I*ikP{7StE$*9AG!z]_7YT[_jv~q');
define('AUTH_SALT',        '?GK+}Ap2|fVdB;LE~nK*Z]i]pz_X1O+^ucUPBj^qmt[nHTxw.DaX02lP*$&ZR:hH');
define('SECURE_AUTH_SALT', '+kF>/nfhi3B+1HK+3UA|Nv@.c$:~F#Jl=hL8.9H_eqB>19cT0!IW*,G-n`J]5BQ$');
define('LOGGED_IN_SALT',   'V7*IeG}O#=b6g9A}D+ses612:YXHvgs]aVap&$u:U8`|7/S-=(|Q1^yZf@fy A)9');
define('NONCE_SALT',       '+=/+|%H-uA@GmRS1QD:WcSenU-d.:+;KiRFY|mAmVrf{qb~ioaEKZxiktQ%*ITe7');

	
/**#@-*/

/**
 * WordPress database table prefix.
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

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';