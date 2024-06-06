#!/bin/bash

mkdir -p /run/php/

sed -i 's|listen = /run/php/php8.2-fpm.sock|listen = 0.0.0.0:9000|g' /etc/php/8.2/fpm/pool.d/www.conf

cd /var/www/html/

wp core download --allow-root

wp config create --allow-root --dbname=$DB_NAME --dbuser=$DB_USER --dbpass=$DB_PASS --dbhost=mariadb --path='/var/www/html/' --skip-check

wp core install --allow-root --url=$DOMAIN_NAME --title=miroka --admin_user=$WP_ADMIN --admin_password=$WP_PASS_ADMIN --admin_email=$ADMIN_EMAIL

wp user create	--allow-root $WP_USER $USER_EMAIL --role=author --user_pass=$WP_PASS

exec php-fpm8.2 -F