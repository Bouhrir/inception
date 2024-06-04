#!/bin/bash

service mariadb start 
mysql -e "FLUSH PRIVILEGES;"
sleep 5
# mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$DB_PASSWORD';"
mysql -e "CREATE DATABASE IF NOT EXISTS $DB_NAME ;"
mysql -e "FLUSH PRIVILEGES;"
mysql -e "CREATE USER IF NOT EXISTS '$DB_USER'@'%' IDENTIFIED BY '$DB_PASS';"
mysql -e "FLUSH PRIVILEGES;"
mysql -e "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'%' IDENTIFIED BY '$DB_PASS';"
mysql -e "FLUSH PRIVILEGES;"

service mariadb stop

exec mysqld_safe