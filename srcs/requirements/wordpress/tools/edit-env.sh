sed -i -e "s/WORDPRESS_NAME/'$DB_NAME'/g" ./var/www/wordpress/wp-config.php;
sed -i -e "s/WORDPRESS_USER/'$DB_USER'/g" ./var/www/wordpress/wp-config.php;
sed -i -e "s/WORDPRESS_PASSWORD/'$DB_PASSWORD'/g" ./var/www/wordpress/wp-config.php;
sed -i -e "s/WORDPRESS_HOST/'$DB_HOST'/g" ./var/www/wordpress/wp-config.php;